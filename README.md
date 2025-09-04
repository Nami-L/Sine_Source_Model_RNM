# Sine_Source_Model_RNM
```bash
setenv GIT_ROOT `git rev-parse --show-toplevel`
setenv UVM_WORK $GIT_ROOT/work/sim
mkdir -p $UVM_WORK && cd $UVM_WORK
ln -sf $GIT_ROOT/verification/uvm/scripts/makefiles/Makefile.vcs Makefile
ln -sf $GIT_ROOT/verification/uvm/scripts/setup/setup_synopsys_eda.tcsh
source setup_synopsys_eda.tcsh


Colocar la siguiente linea para crear un link 

$ ln -sf Makefile/Makefile.vcs Makefile 
