help([[
]])

prepend_path("MODULEPATH", "/ncrc/proj/epic/spack-stack/c6/spack-stack-1.9.2/envs/ue-oneapi-2024.2.1/install/modulefiles/Core")

local stack_python_ver=os.getenv("stack_python_ver") or "3.11.7"
local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2024.2.1"
local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "8.1.32"
local cmake_ver=os.getenv("cmake_ver") or "3.27.9"

load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))
load(pathJoin("stack-python", stack_python_ver))
load(pathJoin("cmake", cmake_ver))

load("gsi_common")

pushenv("GSI_BINARY_SOURCE_DIR", "/gpfs/f6/bil-fire8/world-shared/GSI_data/fix/gsi/20241022")

setenv("CMAKE_C_COMPILER","cc")
setenv("CMAKE_Fortran_COMPILER","ftn")
setenv("CMAKE_CXX_COMPILER","CC")
pushenv("CRAYPE_LINK_TYPE","dynamic")

whatis("Description: GSI environment on GaeaC6 with Intel Compilers")
