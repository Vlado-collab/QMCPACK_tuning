cd 04_VMCopt/

module load QMCPACK/3.6.0-intel-2018a

qmca -q ev *scalar.dat>result

cd ../05_VMCopt/
module load QMCPACK/3.6.0-intel-2018a
qsub qmcpack_salomon.sh

until [ -f testVMCopt.s011.opt.xml ]
do
     sleep 45
done
echo "File found"

module load QMCPACK/3.6.0-intel-2018a
qmca -q ev *scalar.dat>result

cd ..
cp -r 05_VMCopt 06_VMCopt
