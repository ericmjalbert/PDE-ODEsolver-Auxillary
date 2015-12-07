#!/bin/bash

rm -r out*

#bash converge_analysis.sh
bash core_speed_check.sh
#bash fully_implicit_tol.sh  
#bash sim_basic_growth.sh  
#bash sim_basic_spherical.sh  
#bash sim_basic_trav_wave.sh
#bash sim_spatial.sh
#bash sim_trav_parameter_speed.sh
#bash sim_trav_show_dimension.sh
#bash sim_trav_stability.sh
#bash sim_typical.sh


mv out* ../
