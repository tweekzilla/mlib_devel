warning off Simulink:SL_SaveWithParameterizedLinks_Warning
warning off Simulink:SL_LoadMdlParameterizedLink
addpath([getenv('XILINX_PATH'), '/ISE/sysgen/util/']);
addpath([getenv('XILINX_PATH'), '/ISE/sysgen/bin/lin64']);
addpath([getenv('MLIB_DEVEL_PATH'), '/casper_library']);
addpath([getenv('MLIB_DEVEL_PATH'), '/xps_library']);
addpath('/home/rw247/monroe_library/casper_libraries/xblocks_devel/xblocks_library')
addpath('/home/rw247/monroe_library/monroe_library/xblock_helper_functions')
addpath('/home/rw247/monroe_library/monroe_library')
xlAddSysgen([getenv('XILINX_PATH'), '/ISE'])
sysgen_startup
load_system('casper_library');
load_system('xps_library');
load_system('monroe_library');
