help([[
]])

prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.9.2/envs/wgrib2-oneapi-2024.2.1/install/modulefiles/Core")
prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.9.2/envs/wgrib2-oneapi-2024.2.1/install/modulefiles/intel-oneapi-mpi/2021.13-sbi3u54/gcc/13.3.0")

local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2024.2.1"
local stack_intel_oneapi_mpi_ver=os.getenv("stack_intel_oneapi_mpi_ver") or "2021.13"
local mkl_ver=os.getenv("mkl_ver") or "2024.2.1"
local stack_python_ver=os.getenv("stack_python_ver") or "3.11.7"
local cmake_ver=os.getenv("cmake_ver") or "3.27.9"

load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_intel_oneapi_mpi_ver))
load(pathJoin("mkl", mkl_ver))
load(pathJoin("stack-python", stack_python_ver))
load(pathJoin("cmake", cmake_ver))

load("gsi_common")

pushenv("CFLAGS", "-xHOST")
pushenv("FFLAGS", "-xHOST")

setenv("CMAKE_C_COMPILER", "mpiicx")
setenv("CMAKE_CXX_COMPILER", "mpiicpx")
setenv("CMAKE_Fortran_COMPILER", "mpiifort")

pushenv("GSI_BINARY_SOURCE_DIR", "/scratch1/NCEPDEV/global/glopara/fix/gsi/20241022")

whatis("Description: GSI environment on Hera with Intel Compilers")
