#!/bin/bash

    node_input() {

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

    export IP BUILD_PATH WORKDIR SERVER_PATH NODE_VERSION PEM_FILE USERNAME REPO_URL BRANCH_NAME DEPLOY_PATH
}

meteor_input() {

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

    export IP BUILD_PATH WORKDIR SERVER_PATH NODE_VERSION PEM_FILE USERNAME REPO_URL BRANCH_NAME DEPLOY_PATH

}
