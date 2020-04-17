cd 04_VMCopt/
module load QMCPACK/3.6.0-intel-2018a
qsub qmcpack_salomon.sh

until [ -f testVMCopt.s011.stat.h5 ]
do
     sleep 15
done
echo "File found"

until [ -f testVMCopt.s011.opt.xml ]
do
     sleep 45
done
echo "File found"

cp testVMCopt.s011.opt.xml ../05_VMCopt/comment.wfj.xml
