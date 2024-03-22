#! /bin/bash
#define the max cpu load percentage
max_load=90

#define the step size to increase the laod
step_size=30

#define the dureation to maintain the laod at 90%(in seconds)
duration=1800 #30 minutes

#loop to gradually increase the cpu load
for load in $(seq 0 $step_size $max_load); do 
  stress --cpu 1 --timeout 5s &  #Adjust parameters as needed
  sleep 30 # wait for 30 seconds
  pkill stress
  echo "increased load to $load%"
  if [ $load -eq $max_load ]; then
    break
  fi
done

# After reqaching 90% laod, maintain it for the specified duration
echo "maintaining 90% load for the next 30 minutes.."
stress --cpu 1 --timeout $duration #Adjust paramters as needed 


===============================
execution steps"
yum install
yum install stress -y
vi asgload.sh
chmod +x asgload.sh
./asgload.sh
ls -ll
