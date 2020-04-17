cd 06_VMCopt
cp testVMCopt.s015.opt.xml ../07_DMC/psiT.wfj.xml

cd ../07_DMC

qsub qmcpack_salomon.sh
qstat -u vkolesa

until [ -f testDMC.s002.random.h5 ]
do
     sleep 35
done
echo "File found"

module load QMCPACK/3.6.0-intel-2018a
qmca -q ev *scalar.dat>result
