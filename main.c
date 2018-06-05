#include <stdio.h>
#include <mpi.h>
#include "Libs/mpi_lsa_com.h"

int main( int argc, char *argv[] ) {

  MPI_Init( &argc, &argv );

  int size, rank;
  MPI_Comm_size( MPI_COMM_WORLD, &size );
  MPI_Comm_rank( MPI_COMM_WORLD, &rank );

  if(rank == 0){
    printf("Info ]> The Comm world size of FATHER is %d \n", size);
  }

  int GMRES_SIZE = 2, ARNOLDI_SIZE = 2, LS_SIZE = 1;

  MPI_Comm COMM_GMRES, COMM_ARNOLDI, COMM_LS;
  MPI_Request gReq[GMRES_SIZE], aReq[ARNOLDI_SIZE], lReq[LS_SIZE];
  MPI_Status gStatus, aStatus, lStatus;

  MPI_Comm_spawn( "./gmres.exe", MPI_ARGV_NULL, GMRES_SIZE, MPI_INFO_NULL, 0, MPI_COMM_WORLD, &COMM_GMRES, MPI_ERRCODES_IGNORE);
  MPI_Comm_spawn( "./arnoldi.exe", MPI_ARGV_NULL, ARNOLDI_SIZE, MPI_INFO_NULL, 0, MPI_COMM_WORLD, &COMM_ARNOLDI, MPI_ERRCODES_IGNORE);
  MPI_Comm_spawn( "./lsqr.exe", MPI_ARGV_NULL, LS_SIZE, MPI_INFO_NULL, 0, MPI_COMM_WORLD, &COMM_LS, MPI_ERRCODES_IGNORE);

  int exit_type;

  //receive exit type from GMRES Componet
  mpi_lsa_com_type_recv(&COMM_GMRES, &exit_type);

  //send exit type to LS and ERAM Components
  mpi_lsa_com_type_send(&COMM_ARNOLDI, &exit_type);
  mpi_lsa_com_type_send(&COMM_LS, &exit_type);

  printf("Info ]> Father send exit type to ERAM and LS Component\n");


  MPI_Finalize();

  return 0;
}
