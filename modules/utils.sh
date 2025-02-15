#!/bin/bash

#FUNCTION TO GET THE PROJECT TYPE 
get_project_type() {
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
export $PROJECT_TYPE
}