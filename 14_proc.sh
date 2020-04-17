cd 06_VMCopt
qsub qmcpack_salomon.sh

until [ -f testVMCopt.s023.stat.h5 ]
do
     sleep 45
done
echo "File found"

until [ -f testVMCopt.s023.stat.h5 ]
do
     sleep 45
done
echo "File found"


qmca -q ev *scalar.dat>result
