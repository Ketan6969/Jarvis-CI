#!/bin/bash
#==================================================================================
# AUTHOR NAME: KETAN SOLANKI
# VERSION: V1
#
#===================================================================================
# THIS SCRIPT WILL GENERATE A JENKINSFILE TEMPLATE WITH THE GIVEN DETAILS
#===================================================================================

echo "WELCOME TO JARVIS CI!!"

echo "Enter Filename"
read FILE_NAME

echo "PROJECT TYPE:"
echo -e "1) Node\n2) Meteor"
read PROJECT_NUM

case $PROJECT_NUM in
  1)
    PROJECT_TYPE="NODE"
    echo $PROJECT_TYPE
    ;;
  2)
    PROJECT_TYPE="METEOR"
    echo $PROJECT_TYPE
    ;;
  *)
    echo "INVALID OPTION"
    exit 1
    ;;
esac

if [ "$PROJECT_TYPE" == "NODE" ]; then

  echo "Enter Server IP:"
  read IP
  echo "Enter Build path"
  read BUILD_PATH
  echo "Enter Workdir"
  read WORKDIR
  echo "Enter Server Path"
  read SERVER_PATH
  echo "Enter node version"
  read NODE_VERSION
  echo "Enter Pem file name"
  read PEM_FILE
  echo "Enter Username"
  read USERNAME
  echo "Enter Repository URL"
  read REPO_URL
  echo "Enter Branch Name"
  read BRANCH_NAME
  echo "Deploy Path"
  read DEPLOY_PATH


  sed -e "s|SERVER_IP_VAR|${IP}|g" \
      -e "s|BUILD_PATH_VAR|${BUILD_PATH}|g" \
      -e "s|WORKDIR_VAR|${WORKDIR}|g" \
      -e "s|SERVER_PATH_VAR|${SERVER_PATH}|g" \
      -e "s|NODE_VERSION_VAR|${NODE_VERSION}|g" \
      -e "s|USERNAME_VAR|${USERNAME}|g" \
      -e "s|PEM_FILE_VAR|${PEM_FILE}|g" \
      -e "s|REPO_VAR|${REPO_URL}|g" \
      -e "s|DEPLOY_PATH_VAR|${DEPLOY_PATH}|g" \
      -e "s|BRANCH_NAME_VAR|${BRANCH_NAME}|g" ./templates/node_template.txt  > "$FILE_NAME.txt"
fi
