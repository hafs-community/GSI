help([[
]])

prepend_path("MODULEPATH", "/work/noaa/epic/role-epic/spack-stack/orion/spack-stack-1.6.0/envs/unified-env-rocky9/install/modulefiles/Core")

local stack_python_ver=os.getenv("stack_python_ver") or "3.10.13"
local stack_intel_ver=os.getenv("stack_intel_ver") or "2021.9.0"
local stack_impi_ver=os.getenv("stack_impi_ver") or "2021.9.0"
local cmake_ver=os.getenv("cmake_ver") or "3.23.1"
local prod_util_ver=os.getenv("prod_util_ver") or "2.1.1"

load(pathJoin("stack-intel", stack_intel_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))
load(pathJoin("python", stack_python_ver))
load(pathJoin("cmake", cmake_ver))
load(pathJoin("prod_util", prod_util_ver))

local netcdf_c_ver=os.getenv("netcdf_c_ver") or "4.9.2"
local netcdf_fortran_ver=os.getenv("netcdf_fortran_ver") or "4.6.1"
local bufr_ver=os.getenv("bufr_ver") or "12.0.1"
local bacio_ver=os.getenv("bacio_ver") or "2.4.1"
local w3emc_ver=os.getenv("w3emc_ver") or "2.10.0"
local sp_ver=os.getenv("sp_ver") or "2.5.0"
local ip_ver=os.getenv("ip_ver") or "4.3.0"
local sigio_ver=os.getenv("sigio_ver") or "2.3.2"
local sfcio_ver=os.getenv("sfcio_ver") or "1.4.1"
local nemsio_ver=os.getenv("nemsio_ver") or "2.5.4"
local wrf_io_ver=os.getenv("wrf_io_ver") or "1.2.0"
local ncio_ver=os.getenv("ncio_ver") or "1.1.2"
local crtm_ver=os.getenv("crtm_ver") or "2.4.0"
local ncdiag_ver=os.getenv("ncdiag_ver") or "1.1.2"

load(pathJoin("netcdf-c", netcdf_c_ver))
load(pathJoin("netcdf-fortran", netcdf_fortran_ver))
load(pathJoin("bufr", bufr_ver))
load(pathJoin("bacio", bacio_ver))
load(pathJoin("w3emc", w3emc_ver))
load(pathJoin("sp", sp_ver))
load(pathJoin("ip", ip_ver))
load(pathJoin("sigio", sigio_ver))
load(pathJoin("sfcio", sfcio_ver))
load(pathJoin("nemsio", nemsio_ver))
load(pathJoin("wrf-io", wrf_io_ver))
load(pathJoin("ncio", ncio_ver))
load(pathJoin("crtm", crtm_ver))
load(pathJoin("gsi-ncdiag",ncdiag_ver))

load("intel-oneapi-mkl/2022.2.1")

pushenv("CFLAGS", "-xHOST")
pushenv("FFLAGS", "-xHOST")
pushenv("GSI_BINARY_SOURCE_DIR", "/work/noaa/global/glopara/fix/gsi/20240208")

whatis("Description: GSI environment on Orion with Intel Compilers")
help([[
Load common modules to build GSI on all machines
]])

