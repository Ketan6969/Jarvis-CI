#!/bin/bash
#==================================================================================
# AUTHOR NAME: KETAN SOLANKI
# VERSION: V1
#
#===================================================================================
# THIS SCRIPT WILL GENERATE A JENKINSFILE TEMPLATE WITH THE GIVEN DETAILS
#===================================================================================
set -e 

#SOURCING MODULES
source modules/inputs.sh
source modules/generate.sh
source modules/utils.sh

echo "======================================"
echo "WELCOME TO JARVIS CI!!"
echo "======================================"

echo "Enter Filename"
read FILE_NAME

#FUNCTION TO GET THE PROJECT TYPE (METEOR, NODE ETC)
get_project_type

#GENERATING THE ACTUAL FILE FROM TEMPLATE
if [ "$PROJECT_TYPE" == "NODE" ]; then
  node_input
  generate_node
fi

if [ "$PROJECT_TYPE" == "METEOR" ]; then
  meteor_input
  generate_meteor
fi