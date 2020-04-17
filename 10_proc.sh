
#mkdir 01_conv
#####################################################################################################################################
cd 01_conv 
#####################################################################################################################################
#scp student2@maxwell.osu.cz:~/vktest/03_HCu_CuH/03_monomer/01_conversion/wa.fchk .

#module load QMCPACK/3.6.0-intel-2018a
#convert4qmc -hdf5 -prefix wa -gaussian wa.fchk


#until [ -f wa.orbs.h5 ]
#do
#     sleep 15
#done
#echo "File found"

#mkdir ../02_VMC_tot_e
#mkdir ../03_VMCopt
####################################################################################################################################
mkdir ../04_VMCopt
mkdir ../05_VMCopt
mkdir ../07_DMC

#echo "<?xml version=\"1.0\"?>"                                                                          >  ../02_VMC_tot_e/runVMC.xml
#echo "<simulation>"										      	>> ../02_VMC_tot_e/runVMC.xml	
#echo "  <project id=\"testVMC\" series=\"0\"/>"							      	>> ../02_VMC_tot_e/runVMC.xml	
#echo ""												      	>> ../02_VMC_tot_e/runVMC.xml		
#echo "  <include href=\"comment.structure.xml\"/>"							>> ../02_VMC_tot_e/runVMC.xml
#echo "  <include href=\"comment.wfnoj.xml\"/>"								>> ../02_VMC_tot_e/runVMC.xml
#echo ""													>> ../02_VMC_tot_e/runVMC.xml
#echo "  <hamiltonian name=\"h0\" type=\"generic\" target=\"e\">"					>> ../02_VMC_tot_e/runVMC.xml
#echo "    <pairpot name=\"ElecElec\" type=\"coulomb\" source=\"e\" target=\"e\" physical=\"true\"/>"	>> ../02_VMC_tot_e/runVMC.xml
#echo "    <pairpot name=\"IonIon\" type=\"coulomb\" source=\"ion0\" target=\"ion0\"/>"			>> ../02_VMC_tot_e/runVMC.xml
#echo "    <pairpot name=\"PseudoPot\" type=\"pseudo\" source=\"ion0\" wavefunction=\"psi0\" format=\"xml\">"	>> ../02_VMC_tot_e/runVMC.xml
#echo "      <pseudo elementType=\"H\" href=\"H.ccECP.xml\"/>"						>> ../02_VMC_tot_e/runVMC.xml	
#echo "      <pseudo elementType=\"F\" href=\"F.ccECP.xml\"/>"						>> ../02_VMC_tot_e/runVMC.xml
#echo "      <pseudo elementType=\"Cu\" href=\"Cu.ccECP.xml\"/>"						>> ../02_VMC_tot_e/runVMC.xml
#echo "    </pairpot>"											>> ../02_VMC_tot_e/runVMC.xml
#echo "  </hamiltonian>"											>> ../02_VMC_tot_e/runVMC.xml
#echo ""													>> ../02_VMC_tot_e/runVMC.xml
#echo "  <qmc method=\"vmc\" move=\"pbyp\" checkpoint=\"0\">"						>> ../02_VMC_tot_e/runVMC.xml
#echo "    <estimator name=\"LocalEnergy\" hdf5=\"no\"/>"						>> ../02_VMC_tot_e/runVMC.xml
#echo "    <parameter name=\"warmupSteps\">100</parameter>"						>> ../02_VMC_tot_e/runVMC.xml
#echo "    <parameter name=\"blocks\">20</parameter>"							>> ../02_VMC_tot_e/runVMC.xml
#echo "    <parameter name=\"steps\">10</parameter>"							>> ../02_VMC_tot_e/runVMC.xml
#echo "    <parameter name=\"substeps\">3</parameter>"							>> ../02_VMC_tot_e/runVMC.xml
#echo "    <parameter name=\"timestep\">0.5</parameter>"							>> ../02_VMC_tot_e/runVMC.xml
#echo "    <parameter name=\"usedrift\">yes</parameter>"							>> ../02_VMC_tot_e/runVMC.xml
#echo "    <parameter name=\"walkers\">120</parameter>"							>> ../02_VMC_tot_e/runVMC.xml
#echo "  </qmc>"												>> ../02_VMC_tot_e/runVMC.xml
#echo "</simulation>"											>> ../02_VMC_tot_e/runVMC.xml


#echo "<?xml version=\"1.0\"?>"										>  ../03_VMCopt/runVMC.xml
#echo "<simulation>"											>> ../03_VMCopt/runVMC.xml
#echo "  <project id=\"testVMCopt\" series=\"0\"/>"							>> ../03_VMCopt/runVMC.xml
#echo ""													>> ../03_VMCopt/runVMC.xml
#echo "  <include href=\"comment.structure.xml\"/>"							>> ../03_VMCopt/runVMC.xml
#echo "  <include href=\"comment.wfj.xml\"/>"								>> ../03_VMCopt/runVMC.xml
#echo ""													>> ../03_VMCopt/runVMC.xml
#echo "  <hamiltonian name=\"h0\" type=\"generic\" target=\"e\">"					>> ../03_VMCopt/runVMC.xml
#echo "    <pairpot name=\"ElecElec\" type=\"coulomb\" source=\"e\" target=\"e\" physical=\"true\"/>"	>> ../03_VMCopt/runVMC.xml
#echo "    <pairpot name=\"IonIon\" type=\"coulomb\" source=\"ion0\" target=\"ion0\"/>"			>> ../03_VMCopt/runVMC.xml
#echo "    <pairpot name=\"PseudoPot\" type=\"pseudo\" source=\"ion0\" wavefunction=\"psi0\" format=\"xml\">"	>> ../03_VMCopt/runVMC.xml
#echo "      <pseudo elementType=\"H\" href=\"H.ccECP.xml\"/>"						>> ../03_VMCopt/runVMC.xml
#echo "      <pseudo elementType=\"F\" href=\"F.ccECP.xml\"/>"						>> ../03_VMCopt/runVMC.xml
#echo "      <pseudo elementType=\"Cu\" href=\"Cu.ccECP.xml\"/>"						>> ../03_VMCopt/runVMC.xml
#echo "    </pairpot>"											>> ../03_VMCopt/runVMC.xml
#echo "  </hamiltonian>"											>> ../03_VMCopt/runVMC.xml
#echo "  <loop max=\"12\">"										>> ../03_VMCopt/runVMC.xml
#echo "    <qmc method=\"linear\" move=\"pbyp\" checkpoint=\"-1\">"					>> ../03_VMCopt/runVMC.xml
#echo "    	<estimator name=\"LocalEnergy\" hdf5=\"no\"/>"						>> ../03_VMCopt/runVMC.xml
#echo "    	<parameter name=\"warmupSteps\">100</parameter>"					>> ../03_VMCopt/runVMC.xml	
#echo "    	<parameter name=\"blocks\">40</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "    	<parameter name=\"steps\">10</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "    	<parameter name=\"substeps\">3</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "    	<parameter name=\"timestep\">0.5</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "    	<parameter name=\"usedrift\">yes</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "    	<parameter name=\"walkers\">240</parameter>"						>> ../03_VMCopt/runVMC.xml	
#echo "        <parameter name=\"samples\">192000</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "        <parameter name=\"usedrift\">yes</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "        <parameter name=\"nonlocalpp\">yes</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "        <parameter name=\"MinMethod\">OneShiftOnly</parameter>"					>> ../03_VMCopt/runVMC.xml
#echo "        <parameter name=\"minwalkers\">0.3</parameter>"						>> ../03_VMCopt/runVMC.xml
#echo "        <cost name=\"energy\"> 0.95 </cost>"							>> ../03_VMCopt/runVMC.xml
#echo "        <cost name=\"reweightedvariance\"> 0.05 </cost>"						>> ../03_VMCopt/runVMC.xml
#echo "    </qmc>"											>> ../03_VMCopt/runVMC.xml
#echo "  </loop>"											>> ../03_VMCopt/runVMC.xml
#echo "</simulation>"											>> ../03_VMCopt/runVMC.xml



echo "<?xml version=\"1.0\"?>"										>  ../04_VMCopt/runVMC.xml
echo "<simulation>"											>> ../04_VMCopt/runVMC.xml
echo "  <project id=\"testVMCopt\" series=\"0\"/>"							>> ../04_VMCopt/runVMC.xml
echo ""													>> ../04_VMCopt/runVMC.xml
echo "  <include href=\"comment.structure.xml\"/>"							>> ../04_VMCopt/runVMC.xml
echo "  <include href=\"comment.wfj.xml\"/>"								>> ../04_VMCopt/runVMC.xml
echo ""													>> ../04_VMCopt/runVMC.xml
echo "  <hamiltonian name=\"h0\" type=\"generic\" target=\"e\">"					>> ../04_VMCopt/runVMC.xml
echo "    <pairpot name=\"ElecElec\" type=\"coulomb\" source=\"e\" target=\"e\" physical=\"true\"/>"	>> ../04_VMCopt/runVMC.xml
echo "    <pairpot name=\"IonIon\" type=\"coulomb\" source=\"ion0\" target=\"ion0\"/>"			>> ../04_VMCopt/runVMC.xml
echo "    <pairpot name=\"PseudoPot\" type=\"pseudo\" source=\"ion0\" wavefunction=\"psi0\" format=\"xml\">"	>> ../04_VMCopt/runVMC.xml
echo "      <pseudo elementType=\"H\" href=\"H.ccECP.xml\"/>"						>> ../04_VMCopt/runVMC.xml
echo "      <pseudo elementType=\"F\" href=\"F.ccECP.xml\"/>"						>> ../04_VMCopt/runVMC.xml
echo "      <pseudo elementType=\"Cu\" href=\"Cu.ccECP.xml\"/>"						>> ../04_VMCopt/runVMC.xml
echo "    </pairpot>"											>> ../04_VMCopt/runVMC.xml
echo "  </hamiltonian>"											>> ../04_VMCopt/runVMC.xml
echo "  <loop max=\"12\">"										>> ../04_VMCopt/runVMC.xml
echo "    <qmc method=\"linear\" move=\"pbyp\" checkpoint=\"-1\">"					>> ../04_VMCopt/runVMC.xml
echo "    	<estimator name=\"LocalEnergy\" hdf5=\"no\"/>"						>> ../04_VMCopt/runVMC.xml
echo "    	<parameter name=\"warmupSteps\">100</parameter>"					>> ../04_VMCopt/runVMC.xml	
echo "    	<parameter name=\"blocks\">40</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "    	<parameter name=\"steps\">10</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "    	<parameter name=\"substeps\">3</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "    	<parameter name=\"timestep\">0.5</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "    	<parameter name=\"usedrift\">yes</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "    	<parameter name=\"walkers\">240</parameter>"						>> ../04_VMCopt/runVMC.xml	
echo "        <parameter name=\"samples\">192000</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "        <parameter name=\"usedrift\">yes</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "        <parameter name=\"nonlocalpp\">yes</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "        <parameter name=\"MinMethod\">OneShiftOnly</parameter>"					>> ../04_VMCopt/runVMC.xml
echo "        <parameter name=\"minwalkers\">0.3</parameter>"						>> ../04_VMCopt/runVMC.xml
echo "        <cost name=\"energy\"> 0.95 </cost>"							>> ../04_VMCopt/runVMC.xml
echo "        <cost name=\"reweightedvariance\"> 0.05 </cost>"						>> ../04_VMCopt/runVMC.xml
echo "    </qmc>"											>> ../04_VMCopt/runVMC.xml
echo "  </loop>"											>> ../04_VMCopt/runVMC.xml
echo "</simulation>"											>> ../04_VMCopt/runVMC.xml




echo "<?xml version=\"1.0\"?>"										>  ../05_VMCopt/runVMC.xml
echo "<simulation>"											>> ../05_VMCopt/runVMC.xml
echo "  <project id=\"testVMCopt\" series=\"0\"/>"							>> ../05_VMCopt/runVMC.xml
echo ""													>> ../05_VMCopt/runVMC.xml
echo "  <include href=\"comment.structure.xml\"/>"							>> ../05_VMCopt/runVMC.xml
echo "  <include href=\"comment.wfj.xml\"/>"								>> ../05_VMCopt/runVMC.xml
echo ""													>> ../05_VMCopt/runVMC.xml
echo "  <hamiltonian name=\"h0\" type=\"generic\" target=\"e\">"					>> ../05_VMCopt/runVMC.xml
echo "    <pairpot name=\"ElecElec\" type=\"coulomb\" source=\"e\" target=\"e\" physical=\"true\"/>"	>> ../05_VMCopt/runVMC.xml
echo "    <pairpot name=\"IonIon\" type=\"coulomb\" source=\"ion0\" target=\"ion0\"/>"			>> ../05_VMCopt/runVMC.xml
echo "    <pairpot name=\"PseudoPot\" type=\"pseudo\" source=\"ion0\" wavefunction=\"psi0\" format=\"xml\">"	>> ../05_VMCopt/runVMC.xml
echo "      <pseudo elementType=\"H\" href=\"H.ccECP.xml\"/>"						>> ../05_VMCopt/runVMC.xml
echo "      <pseudo elementType=\"F\" href=\"F.ccECP.xml\"/>"						>> ../05_VMCopt/runVMC.xml
echo "      <pseudo elementType=\"Cu\" href=\"Cu.ccECP.xml\"/>"						>> ../05_VMCopt/runVMC.xml
echo "    </pairpot>"											>> ../05_VMCopt/runVMC.xml
echo "  </hamiltonian>"											>> ../05_VMCopt/runVMC.xml
echo "  <loop max=\"12\">"										>> ../05_VMCopt/runVMC.xml
echo "    <qmc method=\"linear\" move=\"pbyp\" checkpoint=\"-1\">"					>> ../05_VMCopt/runVMC.xml
echo "    	<estimator name=\"LocalEnergy\" hdf5=\"no\"/>"						>> ../05_VMCopt/runVMC.xml
echo "    	<parameter name=\"warmupSteps\">100</parameter>"					>> ../05_VMCopt/runVMC.xml	
echo "    	<parameter name=\"blocks\">40</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "    	<parameter name=\"steps\">10</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "    	<parameter name=\"substeps\">3</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "    	<parameter name=\"timestep\">0.5</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "    	<parameter name=\"usedrift\">yes</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "    	<parameter name=\"walkers\">240</parameter>"						>> ../05_VMCopt/runVMC.xml	
echo "        <parameter name=\"samples\">192000</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "        <parameter name=\"usedrift\">yes</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "        <parameter name=\"nonlocalpp\">yes</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "        <parameter name=\"MinMethod\">OneShiftOnly</parameter>"					>> ../05_VMCopt/runVMC.xml
echo "        <parameter name=\"minwalkers\">0.3</parameter>"						>> ../05_VMCopt/runVMC.xml
echo "        <cost name=\"energy\"> 0.95 </cost>"							>> ../05_VMCopt/runVMC.xml
echo "        <cost name=\"reweightedvariance\"> 0.05 </cost>"						>> ../05_VMCopt/runVMC.xml
echo "    </qmc>"											>> ../05_VMCopt/runVMC.xml
echo "  </loop>"											>> ../05_VMCopt/runVMC.xml
echo "</simulation>"											>> ../05_VMCopt/runVMC.xml



echo "<?xml version=\"1.0\"?>"										>   ../07_DMC/runDMC.xml
echo "<simulation>"											>>  ../07_DMC/runDMC.xml
echo "  <project id=\"testDMC\" series=\"0\"/>"								>>  ../07_DMC/runDMC.xml
echo ""													>>  ../07_DMC/runDMC.xml
echo "  <include href=\"comment.structure.xml\"/>"							>>  ../07_DMC/runDMC.xml
echo "  <include href=\"psiT.wfj.xml\"/>"								>>  ../07_DMC/runDMC.xml
echo ""													>>  ../07_DMC/runDMC.xml
echo "  <hamiltonian name=\"h0\" type=\"generic\" target=\"e\">"					>>  ../07_DMC/runDMC.xml
echo "    <pairpot name=\"ElecElec\" type=\"coulomb\" source=\"e\" target=\"e\" physical=\"true\"/>"	>>  ../07_DMC/runDMC.xml
echo "    <pairpot name=\"IonIon\" type=\"coulomb\" source=\"ion0\" target=\"ion0\"/>"			>>  ../07_DMC/runDMC.xml	
echo "    <pairpot name=\"PseudoPot\" type=\"pseudo\" source=\"ion0\" wavefunction=\"psi0\" format=\"xml\">"	>>  ../07_DMC/runDMC.xml
echo "      <pseudo elementType=\"H\" href=\"H.ccECP.xml\"/>"						>>  ../07_DMC/runDMC.xml
echo "      <pseudo elementType=\"F\" href=\"F.ccECP.xml\"/>"						>>  ../07_DMC/runDMC.xml
echo "      <pseudo elementType=\"Cu\" href=\"Cu.ccECP.xml\"/>"						>>  ../07_DMC/runDMC.xml
echo "    </pairpot>"											>>  ../07_DMC/runDMC.xml
echo "  </hamiltonian>"											>>  ../07_DMC/runDMC.xml
echo ""													>>  ../07_DMC/runDMC.xml
echo "  <qmc method=\"vmc\" move=\"pbyp\" checkpoint=\"0\">"						>>  ../07_DMC/runDMC.xml
echo "    <estimator name=\"LocalEnergy\" hdf5=\"no\"/>"						>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"warmupSteps\">100</parameter>"						>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"blocks\">10</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"steps\">10</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"substeps\">3</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"timestep\">0.5</parameter>"							>>  ../07_DMC/runDMC.xml	
echo "    <parameter name=\"walkers\">2016</parameter>"							>>  ../07_DMC/runDMC.xml	
echo "    <parameter name=\"samples\">16128</parameter>     <!--ADJUST!! -->"				>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"usedrift\">yes</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"nonlocalpp\">yes</parameter>"						>>  ../07_DMC/runDMC.xml
echo "  </qmc>"												>>  ../07_DMC/runDMC.xml
echo ""													>>  ../07_DMC/runDMC.xml
echo "  <qmc method=\"dmc\" move=\"pbyp\" target=\"e\" checkpoint=\"0\">"					>>  ../07_DMC/runDMC.xml
echo "    <estimator name=\"LocalEnergy\" hdf5=\"no\"/>"							>>  ../07_DMC/runDMC.xml		
echo "    <parameter name=\"warmupSteps\">0</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"blocks\">20</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"timestep\">0.005</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"steps\">200</parameter>     <!-- 1/timestep -->"				>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"targetwalkers\">16128</parameter>     <!-- ADJUST -->"			>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"nonlocalmoves\">v3</parameter>"						>>  ../07_DMC/runDMC.xml
echo "  </qmc>"												>>  ../07_DMC/runDMC.xml
echo ""													>>  ../07_DMC/runDMC.xml	
echo "  <qmc method=\"dmc\" move=\"pbyp\" target=\"e\" checkpoint=\"20\">"					>>  ../07_DMC/runDMC.xml
echo "    <estimator name=\"LocalEnergy\" hdf5=\"no\"/>"							>>  ../07_DMC/runDMC.xml			
echo "    <parameter name=\"warmupSteps\">0</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"blocks\">100</parameter>     <!-- 1/timestep -->"				>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"timestep\">0.005</parameter>"							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"steps\">200</parameter>" 							>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"targetwalkers\">16128</parameter>     <!-- ADJUST! -->"			>>  ../07_DMC/runDMC.xml
echo "    <parameter name=\"nonlocalmoves\">v3</parameter>"						>>  ../07_DMC/runDMC.xml
echo "  </qmc>"												>>  ../07_DMC/runDMC.xml
echo ""													>>  ../07_DMC/runDMC.xml
echo "</simulation>"											>>  ../07_DMC/runDMC.xml



#echo "#!/bin/bash" 											>  ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "#PBS -A OPEN-16-49" 										>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "#PBS -N testVMC" 											>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "#PBS -q qexp" 											>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "#PBS -l select=1:ncpus=24:mpiprocs=2:ompthreads=12" 						>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "#PBS -l walltime=00:10:00" 									>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "#PBS -o qsub.output" 										>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "#PBS -e qsub.error" 										>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "" 												>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "cd \$PBS_O_WORKDIR" 										>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "" 												>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "module purge" 											>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "module load QMCPACK/3.6.0-intel-2018a" 								>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "" 												>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "JOB=runVMC" 											>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "" 												>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "export KMP_AFFINITY=granularity=fine,compact,1,0" 						>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "mpirun --map-by socket --bind-to socket qmcpack  \$JOB.xml >& \$JOB.out" 				>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "" 												>> ../02_VMC_tot_e/qmcpack_salomon.sh
#echo "" 												>> ../02_VMC_tot_e/qmcpack_salomon.sh


#echo "#!/bin/bash"											>  ../03_VMCopt/qmcpack_salomon.sh
#echo "#PBS -A OPEN-16-49"										>> ../03_VMCopt/qmcpack_salomon.sh
#echo "#PBS -N testVMC"											>> ../03_VMCopt/qmcpack_salomon.sh
#echo "#PBS -q qexp"											>> ../03_VMCopt/qmcpack_salomon.sh
#echo "#PBS -l select=1:ncpus=24:mpiprocs=2:ompthreads=12"						>> ../03_VMCopt/qmcpack_salomon.sh
#echo "#PBS -l walltime=01:00:00"									>> ../03_VMCopt/qmcpack_salomon.sh
#echo "#PBS -o qsub.output"										>> ../03_VMCopt/qmcpack_salomon.sh
#echo "#PBS -e qsub.error"										>> ../03_VMCopt/qmcpack_salomon.sh	
#echo ""													>> ../03_VMCopt/qmcpack_salomon.sh
#echo "cd \$PBS_O_WORKDIR"										>> ../03_VMCopt/qmcpack_salomon.sh
#echo ""													>> ../03_VMCopt/qmcpack_salomon.sh
#echo "module purge"											>> ../03_VMCopt/qmcpack_salomon.sh	
#echo "module load QMCPACK/3.6.0-intel-2018a"								>> ../03_VMCopt/qmcpack_salomon.sh
#echo ""													>> ../03_VMCopt/qmcpack_salomon.sh
#echo "JOB=runVMC"											>> ../03_VMCopt/qmcpack_salomon.sh
#echo ""													>> ../03_VMCopt/qmcpack_salomon.sh
#echo "export KMP_AFFINITY=granularity=fine,compact,1,0"							>> ../03_VMCopt/qmcpack_salomon.sh
#echo "mpirun --map-by socket --bind-to socket qmcpack  \$JOB.xml >& \$JOB.out"				>> ../03_VMCopt/qmcpack_salomon.sh


echo "#!/bin/bash"											>  ../04_VMCopt/qmcpack_salomon.sh
echo "#PBS -A OPEN-16-49"										>> ../04_VMCopt/qmcpack_salomon.sh
echo "#PBS -N testVMC"											>> ../04_VMCopt/qmcpack_salomon.sh
echo "#PBS -q qexp"											>> ../04_VMCopt/qmcpack_salomon.sh
echo "#PBS -l select=1:ncpus=24:mpiprocs=2:ompthreads=12"						>> ../04_VMCopt/qmcpack_salomon.sh
echo "#PBS -l walltime=01:00:00"									>> ../04_VMCopt/qmcpack_salomon.sh
echo "#PBS -o qsub.output"										>> ../04_VMCopt/qmcpack_salomon.sh
echo "#PBS -e qsub.error"										>> ../04_VMCopt/qmcpack_salomon.sh	
echo ""													>> ../04_VMCopt/qmcpack_salomon.sh
echo "cd \$PBS_O_WORKDIR"										>> ../04_VMCopt/qmcpack_salomon.sh
echo ""													>> ../04_VMCopt/qmcpack_salomon.sh
echo "module purge"											>> ../04_VMCopt/qmcpack_salomon.sh	
echo "module load QMCPACK/3.6.0-intel-2018a"								>> ../04_VMCopt/qmcpack_salomon.sh
echo ""													>> ../04_VMCopt/qmcpack_salomon.sh
echo "JOB=runVMC"											>> ../04_VMCopt/qmcpack_salomon.sh
echo ""													>> ../04_VMCopt/qmcpack_salomon.sh
echo "export KMP_AFFINITY=granularity=fine,compact,1,0"							>> ../04_VMCopt/qmcpack_salomon.sh
echo "mpirun --map-by socket --bind-to socket qmcpack  \$JOB.xml >& \$JOB.out"				>> ../04_VMCopt/qmcpack_salomon.sh



echo "#!/bin/bash"											>  ../05_VMCopt/qmcpack_salomon.sh
echo "#PBS -A OPEN-16-49"										>> ../05_VMCopt/qmcpack_salomon.sh
echo "#PBS -N testVMC"											>> ../05_VMCopt/qmcpack_salomon.sh
echo "#PBS -q qexp"											>> ../05_VMCopt/qmcpack_salomon.sh
echo "#PBS -l select=1:ncpus=24:mpiprocs=2:ompthreads=12"						>> ../05_VMCopt/qmcpack_salomon.sh
echo "#PBS -l walltime=01:00:00"									>> ../05_VMCopt/qmcpack_salomon.sh
echo "#PBS -o qsub.output"										>> ../05_VMCopt/qmcpack_salomon.sh
echo "#PBS -e qsub.error"										>> ../05_VMCopt/qmcpack_salomon.sh	
echo ""													>> ../05_VMCopt/qmcpack_salomon.sh
echo "cd \$PBS_O_WORKDIR"										>> ../05_VMCopt/qmcpack_salomon.sh
echo ""													>> ../05_VMCopt/qmcpack_salomon.sh
echo "module purge"											>> ../05_VMCopt/qmcpack_salomon.sh	
echo "module load QMCPACK/3.6.0-intel-2018a"								>> ../05_VMCopt/qmcpack_salomon.sh
echo ""													>> ../05_VMCopt/qmcpack_salomon.sh
echo "JOB=runVMC"											>> ../05_VMCopt/qmcpack_salomon.sh
echo ""													>> ../05_VMCopt/qmcpack_salomon.sh
echo "export KMP_AFFINITY=granularity=fine,compact,1,0"							>> ../05_VMCopt/qmcpack_salomon.sh
echo "mpirun --map-by socket --bind-to socket qmcpack  \$JOB.xml >& \$JOB.out"				>> ../05_VMCopt/qmcpack_salomon.sh



echo "#!/bin/bash"											>   ../07_DMC/qmcpack_salomon.sh
echo "#PBS -A OPEN-16-49"										>>  ../07_DMC/qmcpack_salomon.sh
echo "#PBS -N testDMC"											>>  ../07_DMC/qmcpack_salomon.sh
echo "#PBS -q qprod"											>>  ../07_DMC/qmcpack_salomon.sh
echo "#PBS -l select=4:ncpus=24:mpiprocs=2:ompthreads=12"						>>  ../07_DMC/qmcpack_salomon.sh
echo "#PBS -l walltime=06:00:00"									>>  ../07_DMC/qmcpack_salomon.sh
echo "#PBS -o qsub.output"										>>  ../07_DMC/qmcpack_salomon.sh
echo "#PBS -e qsub.error"										>>  ../07_DMC/qmcpack_salomon.sh
echo ""													>>  ../07_DMC/qmcpack_salomon.sh
echo "cd \$PBS_O_WORKDIR"										>>  ../07_DMC/qmcpack_salomon.sh
echo ""													>>  ../07_DMC/qmcpack_salomon.sh
echo "module purge"											>>  ../07_DMC/qmcpack_salomon.sh	
echo "module load QMCPACK/3.6.0-intel-2018a"								>>  ../07_DMC/qmcpack_salomon.sh
echo ""													>>  ../07_DMC/qmcpack_salomon.sh
echo "JOB=runDMC"											>>  ../07_DMC/qmcpack_salomon.sh
echo ""													>>  ../07_DMC/qmcpack_salomon.sh	
echo "export KMP_AFFINITY=granularity=fine,compact,1,0"							>>  ../07_DMC/qmcpack_salomon.sh
echo "mpirun --map-by socket --bind-to socket qmcpack  \$JOB.xml >& \$JOB.out"				>>  ../07_DMC/qmcpack_salomon.sh



#cp comment.structure.xml comment.wfnoj.xml wa.orbs.h5 ../02_VMC_tot_e/
#cp comment.structure.xml wa.orbs.h5 ../03_VMCopt/
#cp comment.wfj.xml ../03_VMCopt/help
#cp comment.wfj.xml ../03_VMCopt/

cp comment.structure.xml wa.orbs.h5 ../04_VMCopt/
cp comment.wfj.xml ../04_VMCopt/help

cp comment.structure.xml wa.orbs.h5 ../05_VMCopt/
cp comment.wfj.xml ../05_VMCopt/help

cp comment.structure.xml wa.orbs.h5 ../07_DMC/

