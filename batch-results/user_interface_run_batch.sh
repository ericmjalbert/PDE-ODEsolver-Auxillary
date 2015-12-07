#!/bin/bash

HOST="ejalbert"
SERVER="reckoning2.mathstat.uoguelph.ca"

TOTALSIM=$(ssh -p26 ${HOST}@${SERVER} \
             'cd $(find ~/Documents/ -name batch-results);\
             cd simulations;\
             simList=$(awk \
               '"'"'{if (substr($1,0,1)!="#"&&NR<end-1&&NR>3) print $2}'"'"'\
               end=$(less ./run_batch.sh | wc -l) ./run_batch.sh);
             for i in $simList;\
               do sim=$(($sim + $(grep "^\s*bash" $i | wc -l)));\
             done;\
             echo $sim')

# Functions
checkProgress() 
{
  testVal=$(ssh -p26  ${HOST}@${SERVER} 'pgrep -f run_batch.sh | wc -l')
  if [ "$testVal" -eq 0 -o "$testVal" -eq 1 ]; then
    echo "Program not running" 
  else
    CURR=$(ssh -p26 ${HOST}@${SERVER} \
      'cd $(find ~/Documents/ -name batch-results);\
      cd simulations;\
      echo $(ls out* -d | wc -l)')
    PROG=$(bc <<< "scale=2; 100*$CURR/$TOTALSIM")
    echo "Current Progress:"
    echo -n "["
    echo "printf "%0.s=" {1..$CURR}" | bash
    echo "printf "%0.s." {1..$(($TOTALSIM - $CURR))}" | bash
    echo "] ($PROG%)"
  fi
}


runSimulations() 
{
  testVal=$(ssh -p26 ${HOST}@${SERVER} 'pgrep -f run_batch.sh | wc -l')
  if [ "$testVal" -eq 0 -o "$testVal" -eq 1 ]; then
    scp -r -P 26 ./simulations ${HOST}@${SERVER}:$(ssh -p26 ${HOST}@${SERVER} 'find ~/Documents/ -name batch-results')
    ssh -p26 -n -f ${HOST}@${SERVER} \
      'cd $(find ~/Documents/ -name batch-results);\
      cd simulations;\
      sh -c "nohup bash run_batch.sh > /dev/null 2> /dev/null < /dev/null &" 2> /dev/null'
  else
    echo "Simualtions currently running"
  fi 
}


grabResults()
{
  echo "Grabbing Simulation Results from reckoning2"
  ssh -p26 ${HOST}@${SERVER} \
    'cd $(find ~/Documents -name batch-results);\
    tar -cf results_$(date +"%b_%d_%Y").tar out*'
  scp -P 26 ${HOST}@${SERVER}:$(ssh -p26 ${HOST}@${SERVER} \
    'find ~/Documents/ -name results_$(date +"%b_%d_%Y").tar') ./
  ssh -p26 ${HOST}@${SERVER} \
    'cd $(find ~/Documents -name batch-results);\
    rm -r *.tar out*'
  echo "Deleting older extracted results"
  rm -rf out*
  echo "Extracting new results"
  tar -xf *.tar
  echo "Moving .tar into stored results"
  mv *.tar ./stored-results
}


endCurrSimulation()
{
  testVal=$(ssh -p26 ${HOST}@${SERVER} 'pgrep -f run_batch.sh | wc -l')
  if [ "$testVal" -eq 0 -o "$testVal" -eq 1 ]; then
    echo "Program not running" 
  else
    ssh -p26 ${HOST}@${SERVER} 'kill `pgrep "bash"`'
    ssh -p26 ${HOST}@${SERVER} 'kill `pgrep "a.out"`'
    echo "Program stopped"
  fi
}


changeSettings()
{
  local choice=0
  local iVal=1
  while [ "$choice" != 'q' ]
  do
    showSimulationsMenu iVal
    selectSimulation $iVal
  done
}


showSimulationsMenu()
{
  local _iVal=$1
  local i=1

  clear
  echo ""
  echo "==================================="
  echo "| P D E - O D E s o l v e r - U I |"
  echo "==================================="
  echo "| Settings  |"
  echo "-------------"
  echo "  Select Simulations"
  echo ""
  for file in `ls -I "run_batch.sh" -I "parameterFiles" ./simulations`
  do
    checkPound=`awk '{if (NR==c) print substr($1,0,1)}' c=$(($i + 4)) ./simulations/run_batch.sh`
    if [ "$checkPound" = "#" ]; then
      echo "  $i) Ignored  - $file"
    else 
      echo "  $i) Selected - $file"
    fi
    i=$(($i + 1))
  done
  echo "  q) Go back to Main Menu"

  eval $_iVal=$i
}

selectSimulation()
{
  local simCount=$1

  read -p "Enter Selection: " choice
  if [ $choice -gt 0 -o $choice -lt $simCount ]; then
    linenum=$(($choice + 4))
    checkPound=`awk '{if (NR==c) print substr($1,0,1)}' c=${linenum} ./simulations/run_batch.sh`
    if [ "$checkPound" == "#" ]; then
      sed -i "${linenum}s/^.//" ./simulations/run_batch.sh
    else
      sed -i "${linenum}s/^/#/" ./simulations/run_batch.sh 
    fi
  fi
}
 

changeHostServer()
{
  local choice=0

  while [ "$choice" != "q" ]
  do 
    clear
    echo ""
    echo "==================================="
    echo "| P D E - O D E s o l v e r - U I |"
    echo "==================================="
    echo "| Host and Server |"
    echo "-------------------"
    echo "  Current name: ${HOST}@${SERVER}"
    echo ""
    echo "  Make sure the new host@server has a ssh-key pair with this local machine."
    echo "  i.e. Make sure you can ssh without needed to enter a password."
    echo ""
    echo "  1) Change Host"
    echo "  2) Change Server"
    echo "  q) Go back"
    read -p "Enter Selection: " choice
    case $choice in
      1) clear;
         echo "";
         echo "===================================";
         echo "| P D E - O D E s o l v e r - U I |";
         echo "===================================";
         echo "| Edit Host Name |";
         echo "------------------";
         echo "  Current host name: ${HOST}";
         read -p "  New host name    : " HOST;;
      2) clear;
         echo "";
         echo "===================================";
         echo "| P D E - O D E s o l v e r - U I |";
         echo "===================================";
         echo "| Edit Host Name |";
         echo "------------------";
         echo "  Current host name: ${SERVER}";
         read -p "  New host name    : " SERVER;;
      q) ;;
      *) echo -n "[!] Invalid Selection, " && usernext
    esac
  done
}


updatePDE()
{
  local PDEDIR=$(find ~/Documents -name PDE-ODEsolver)
  local CURDIR=$(pwd)

  testVal=$(ssh -p26 ${HOST}@${SERVER} 'pgrep -f run_batch.sh | wc -l')
  if [ "$testVal" -eq 0 -o "$testVal" -eq 1 ]; then
    cd $PDEDIR
    tar -cf newPDE.tar * --exclude="parameterOutput" --exclude="parameterParalOutput" 
    ssh -p26 ${HOST}@${SERVER} 'mkdir ~/Documents/PDE-ODEsolver 2> /dev/null' 
    scp -P 26 newPDE.tar ${HOST}@${SERVER}:$(ssh -p26 ${HOST}@${SERVER} 'find ~/Documents/ -name PDE-ODEsolver')/newPDE.tar
    rm newPDE.tar
    cd $CURDIR
    ssh -p26 ${HOST}@${SERVER} \
      'cd $(find ~/Documents/ -name PDE-ODEsolver);\
      tar -xf newPDE.tar;\
      rm newPDE.tar'
    echo "[ ] Completed Updating of PDE-ODEsolver"
  else
    echo "[!] Cannot update while simulations currently running"
  fi 
}


setupFolders()
{
  testVal=$(ssh -p26 ${HOST}@${SERVER} 'pgrep -f run_batch.sh | wc -l')
  if [ "$testVal" -eq 0 -o "$testVal" -eq 1 ]; then
    echo "[ ] Setting up PDE-ODEsolver folder in Documents"
    updatePDE
    echo "[ ] Setting up batch-results folder in Documents"
    tar -cf newBATCH.tar simulations/* 
    ssh -p26 ${HOST}@${SERVER} 'mkdir ~/Documents/batch-results 2> /dev/null'
    scp -P 26 newBATCH.tar ${HOST}@${SERVER}:$(ssh -p26 ${HOST}@${SERVER} 'find ~/Documents/ -name batch-results')/newBATCH.tar
    rm newBATCH.tar
    ssh -p26 ${HOST}@${SERVER} \
      'cd $(find ~/Documents -name batch-results);\
      tar -xf newBATCH.tar;\
      rm newBATCH.tar'
    echo "[ ] Completed Setup of batch-results"
  else 
    echo "[!] Cannot setup while simulations are running"
  fi
}

showHelp() 
{
  echo "/----------------------------------------------------------------------\\"
  echo "| Help                                                                 |"
  echo "\\----------------------------------------------------------------------/"
  echo "  Check-Progess will tell you if there currently are simulations running."
  echo "    If there are some running, then it will estimate the time remaining"
  echo "    for the rest of the simulations."
  echo ""
  echo "  Run-Simulations will run the currently selected suite of simulations on"
  echo "    the reckoning2 server. It will handle all the ssh'ing needed."
  echo ""
  echo "  Grab-Results will compress all the current results from reckoning2,"
  echo "    extract the results into this folder, and then archieve the tar in"
  echo "    the stored-results folder. Note, this will pull the results"
  echo "    regardless of whether simulations are running or not."
  echo ""
  echo "  Change-Settings will allow the user to select which simulations are "
  echo "    computed for the next time Run-Simulations is used."
  echo ""
  echo "  Help displays this message"
  echo ""
  echo "  Exit exits the program"
  echo ""
} 


showMenu()
{
  clear
  echo ""
  echo "==================================="
  echo "| P D E - O D E s o l v e r - U I |"
  echo "==================================="
  echo "| Main Menu |"
  echo "-------------"
  echo ""
  echo "  1) Check Progress"
  echo "  2) Run Simulations"
  echo "  3) Grab Results"
  echo "  4) Kill Currently Running Simulations"
  echo "  5) Change Simulation Settings"
  echo "  6) Change Host and Server Name"
  echo "  7) Update PDE-ODEsolver"
  echo "  8) Setup Folders"
  echo "  9) Help"
  echo "  q) Exit"
}

readChoice()
{
  local choice
  read -p "Enter Selection: " choice
  case $choice in
    1) checkProgress && usernext;;
    2) runSimulations && usernext;;
    3) grabResults; usernext;;
    4) endCurrSimulation && usernext;;
    5) changeSettings;;
    6) changeHostServer;;
    7) updatePDE && usernext;;
    8) setupFolders && usernext;;
    9) showHelp && usernext;;
    q) exit 0;;
    *) echo -ne "[!] Invalid Selection, " && usernext
  esac
}

usernext() 
{
  read -p "Press any key to continue..." -n 1 -s
  echo ""
}

while true
do
  showMenu
  readChoice
done 


