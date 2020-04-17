##########################################################################
cd 02_VMC_tot_e
##########################################################################

#module load QMCPACK/3.6.0-intel-2018a

#qsub qmcpack_salomon.sh

#until [ -f testVMC.s000.stat.h5 ]
#do
#     sleep 15
#done
#echo "File found"

#until [ -f testVMC.s000.stat.h5 ]
#do
#     sleep 35
#done
#echo "File found"

#qmca -q ev testVMC.s000.scalar.dat>result
#cp Cu.ccECP.xml H.ccECP.xml ../03_VMCopt
##########################################################################
cp Cu.ccECP.xml H.ccECP.xml F.ccECP.xml ../04_VMCopt
cp Cu.ccECP.xml H.ccECP.xml F.ccECP.xml ../05_VMCopt
cp Cu.ccECP.xml H.ccECP.xml F.ccECP.xml ../07_DMC

cd ../03_VMCopt
##########################################################################


#module load QMCPACK/3.6.0-intel-2018a
#qsub qmcpack_salomon.sh

#until [ -f runVMC.out ]
#do
#     sleep 45
#done
#echo "File found"

#until [ -f testVMCopt.s011.opt.xml ]
#do
#     sleep 35
#done
#echo "File found"
##########################################################################

cp testVMCopt.s011.opt.xml ../04_VMCopt/comment.wfj.xml
##########################################################################
