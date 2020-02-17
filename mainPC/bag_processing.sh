#! /bin/bash

# make sure this script is executed within folder containing unprocessed bag files.
# Un-bag .bag files and convert them to .csv files:
for file in *.bag
do 
  python bag_to_csv.py $file
done

#convert to .csv files that matlab can work with:
python step_pwm_vs_position_v2.py 
