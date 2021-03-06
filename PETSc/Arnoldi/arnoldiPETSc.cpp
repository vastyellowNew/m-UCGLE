#include "arnoldiPETSc.hpp"


static const char help[] = "Solve Non-Hermitian eigenvalues problem by Arnoldi, options array_in_received_buffer\n\
\t-mfile matrix_file (matrix file in PETSc bin format, this is mandatory)\n\
\t-xfile initial_guess_file (in PETSc bin format)\n";

int main(int argc, char **argv){
	PetscErrorCode ierr;
	Vec x;
	Mat A;
	EPS eps;
	PetscInt its, nconv;
	EPSType type;
	int j;

	int nnq;

	PetscReal re,im;
	PetscScalar ei, er;
	PetscBool flag;
	PetscInt eigen_nb, nb;

	//std::complex<double> *eigenvalues = new std::complex<double> [500];

	PetscBool exit = PETSC_FALSE;
	int end = 0;

	int arank, asize;

	int exit_type = 0;

	int count = 0;

	PetscInt nev, ncv, mpd;
	ierr=SlepcInitialize(&argc,&argv,PETSC_NULL,help);CHKERRQ(ierr);
	PetscPrintf(PETSC_COMM_WORLD,"\n\n]> Initializing SLEPc\n");
	
	MPI_Comm COMM_FATHER;

  	MPI_Comm_size( MPI_COMM_WORLD, &asize );
  	MPI_Comm_rank( MPI_COMM_WORLD, &arank );

  	MPI_Comm_get_parent( &COMM_FATHER );

	/*Load data*/
	ierr=loadInputs(&A,&x);CHKERRQ(ierr);
	PetscPrintf(PETSC_COMM_WORLD,"]> Data loaded\n");

	/*Create the EPS context and setup*/
	ierr = EPSCreate(PETSC_COMM_WORLD,&eps);CHKERRQ(ierr);
	ierr = EPSSetOperators(eps, A, NULL);CHKERRQ(ierr);
	ierr = EPSSetProblemType(eps, EPS_NHEP);CHKERRQ(ierr);
	ierr = EPSSetType(eps,EPSARNOLDI);CHKERRQ(ierr);
	ierr = EPSSetFromOptions(eps);CHKERRQ(ierr);

	ierr=PetscOptionsGetInt(NULL,PETSC_NULL,"-ksp_ls_eigen",&eigen_nb,&flag);CHKERRQ(ierr);
	if(!flag) eigen_nb=EIGEN_ALL;

	int numv = (int) eigen_nb;
	PetscPrintf(PETSC_COMM_WORLD,"]> Krylov Solver settings done\n");

	while(!end){

		count ++;

		/*check if the program need to exit */
		if(exit == PETSC_TRUE)
			break;


		ierr=EPSSetInitialSpace(eps,1,&x);CHKERRQ(ierr);

		if(exit_type != 666){
			nev = 20;
			mpd = 200;
			if(100 + (count - 1)*20 < nev + mpd){
				ncv = 100 + (count - 1) * 20;
			}
			else {ncv = mpd;}
			
			EPSSetTolerances(eps, 1.0e-1, 50);

			EPSSetDimensions(eps, 10, 30, 50);

		}

		PetscPrintf(PETSC_COMM_WORLD,"]> Krylov Solver Launching solving process\n");
		ierr=EPSSolve(eps);CHKERRQ(ierr);
		PetscPrintf(PETSC_COMM_WORLD,"]> Krylov Solver System solved\n");


		ierr=EPSGetConverged(eps,&nb);CHKERRQ(ierr);
		
		PetscPrintf(PETSC_COMM_WORLD, "NB = %d \n", nb);
		std::complex<double> *eigenvalues = new std::complex<double> [EIGEN_ALL];

		for(j = 0;j < EIGEN_ALL; j++){
			ierr = EPSGetEigenvalue(eps,j,&er,&ei);CHKERRQ(ierr);
			#ifdef PETSC_USE_COMPLEX
			  re=PetscRealPart(er);
			  im=PetscImaginaryPart(er);
			#else
			  re=er;
			  im=ei;
			#endif
			eigenvalues[j] = std::complex<double>(re, im);
		}

    std::complex<double> *eigenvalues2  = new std::complex<double> [10];

eigenvalues2[0]=std::complex<double>(-0.825703,0.508459);
eigenvalues2[1]=std::complex<double>(-0.825703,0.508459);
eigenvalues2[2]=std::complex<double>(-0.825703,0.508459);
eigenvalues2[3]=std::complex<double>(-0.825703,0.508459);
eigenvalues2[4]=std::complex<double>(-0.775875 , 0.422209);
eigenvalues2[5]=std::complex<double>(-0.775875 , 0.422209);
eigenvalues2[6]=std::complex<double>(-0.775875 , 0.422209);
eigenvalues2[7]=std::complex<double>(-0.444923,0.517788);
eigenvalues2[8]=std::complex<double>(-0.444923,0.517788);
eigenvalues2[9]=std::complex<double>(-0.444923,0.517788);

nnq = EIGEN_ALL;
//mpi_lsa_com_cplx_array_send(&COMM_FATHER, &nnq, eigenvalues2);

		mpi_lsa_com_cplx_array_send(&COMM_FATHER, &nnq, eigenvalues);

		PetscPrintf(PETSC_COMM_WORLD, "Arnoldi send eigenvalues to FATHER\n");

		/* check if we received an exit message from Father*/
		if(!mpi_lsa_com_type_recv(&COMM_FATHER, &exit_type)){
        		PetscPrintf(PETSC_COMM_WORLD, "Info ]> ERAM Receive signal information from Father\n");	
			if(exit_type == 666){
        			PetscPrintf(PETSC_COMM_WORLD, "Info ]> ERAM exit\n");
         			end = 1;
         			break;
      			}

		}

	}

      	 MPI_Comm_free(&COMM_FATHER);


	/*Clean*/
	ierr = EPSDestroy(&eps);CHKERRQ(ierr);
	ierr = VecDestroy(&x);CHKERRQ(ierr);
	ierr = MatDestroy(&A);CHKERRQ(ierr);
	PetscPrintf(PETSC_COMM_WORLD,"]> Cleaned structures, finalizing\n");

	/*Finalize SLEPc*/
	SlepcFinalize(); 

	return 0;
}


PetscErrorCode loadInputs(Mat * A, Vec * x){
	PetscErrorCode ierr;
	PetscInt sizex,sizey;
	char xfile[]="-xfile";
	
	//load data files
	ierr=loadMatrix(A);CHKERRQ(ierr);
	ierr=loadVector(xfile,x);CHKERRQ(ierr);
	if(*x==NULL) {
		PetscPrintf(PETSC_COMM_WORLD,"]> Creating initial guessed vector x\n");
		ierr=MatGetSize(*A,&sizex,&sizey);CHKERRQ(ierr);
		ierr=generateVectorRandom(sizex,x);CHKERRQ(ierr);
	}

	return 0;
}


PetscErrorCode loadMatrix(Mat * A){
	char file[PETSC_MAX_PATH_LEN];
	char err[PETSC_MAX_PATH_LEN];
	PetscErrorCode ierr;
	PetscBool flag;
	PetscViewer fd;
	PetscInt sizex,sizey;

	/*check args, if no matrix then no work... matrix file is mandatory*/
	ierr=PetscOptionsGetString(NULL,PETSC_NULL,"-mfile",file,PETSC_MAX_PATH_LEN-1,&flag);CHKERRQ(ierr);
	if (!flag) {		
		strcpy(file, "utm300.mtx_300x300_3155nnz");
	}

	/* read matrix file */
	PetscPrintf(PETSC_COMM_WORLD,"Loading Matrix : %s\n",file);

	ierr=MatCreate(PETSC_COMM_WORLD,A);CHKERRQ(ierr);
	ierr=MatSetType(*A,MATAIJ);CHKERRQ(ierr);

	ierr=PetscViewerBinaryOpen(PETSC_COMM_WORLD,file,FILE_MODE_READ,&fd);CHKERRQ(ierr);
	ierr=MatLoad(*A,fd);CHKERRQ(ierr);
	ierr=PetscViewerDestroy(&fd);CHKERRQ(ierr);
	ierr=MatGetSize(*A,&sizex,&sizey);CHKERRQ(ierr);
	PetscPrintf(PETSC_COMM_WORLD,"Loaded Matrix of size : %d %d\n",sizex,sizey);

	return 0;
}


PetscErrorCode loadVector(char * type_v,Vec * b){
	char file[PETSC_MAX_PATH_LEN];
	PetscErrorCode ierr;
	PetscBool flag;
	PetscViewer fd;
	PetscInt size;

	// check if there is a vec file, vector is not mandatory
	ierr=PetscOptionsGetString(NULL,PETSC_NULL,type_v,file,PETSC_MAX_PATH_LEN-1,&flag);CHKERRQ(ierr);
	if (!flag) {		
		PetscPrintf(PETSC_COMM_WORLD,"Error : %s is not properly set\n",type_v);
		*b = NULL;
	}else{
		PetscPrintf(PETSC_COMM_WORLD,"Loading Vector : %s\n",file);
		ierr=PetscViewerBinaryOpen(PETSC_COMM_WORLD,file,FILE_MODE_READ,&fd);CHKERRQ(ierr);
		ierr=VecLoad(*b,fd);CHKERRQ(ierr);
		ierr=PetscViewerDestroy(&fd);CHKERRQ(ierr);
		ierr=VecGetSize(*b,&size);CHKERRQ(ierr);
		PetscPrintf(PETSC_COMM_WORLD,"Loaded Vector of size : %d\n",size);
	}

	return 0;
}


PetscErrorCode generateVectorRandom(PetscInt size, Vec * v){
	PetscErrorCode ierr;

	ierr=PetscPrintf(PETSC_COMM_WORLD,"Generating Vector \n");CHKERRQ(ierr);
	ierr=generateVector(size,v);CHKERRQ(ierr);
	ierr=VecSetRandom(*v,PETSC_NULL);CHKERRQ(ierr);
	PetscPrintf(PETSC_COMM_WORLD,"Generated Random Vector of size : %d\n",size);	

	return 0;
}


PetscErrorCode generateVectorNorm(PetscInt size, Vec * v){
	PetscScalar scal;
	PetscErrorCode ierr;

	ierr=PetscPrintf(PETSC_COMM_WORLD,"Generating Vector \n");CHKERRQ(ierr);
	ierr=generateVector(size,v);CHKERRQ(ierr);
	scal=1.0/size;
	ierr=VecSet(*v,scal);CHKERRQ(ierr);
	PetscPrintf(PETSC_COMM_WORLD,"Generated Norm Vector of size : %d\n",size);	

	return 0;
}


PetscErrorCode generateVector(PetscInt size, Vec * v){
	PetscErrorCode ierr;

	ierr=VecCreate(PETSC_COMM_WORLD,v);CHKERRQ(ierr);
	ierr=VecSetSizes(*v,PETSC_DECIDE,size);CHKERRQ(ierr);
	ierr=VecSetFromOptions(*v);CHKERRQ(ierr);
	/*initiate the vector to its norm*/

	return 0;
}


