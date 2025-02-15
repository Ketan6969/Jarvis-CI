#!/bin/sh

# FUNCTIONS TO GENERATE THE ACTUAL JENKINS FILES
generate_node() {
    sed -e "s|SERVER_IP_VAR|${IP}|g" \
    -e "s|BUILD_PATH_VAR|${BUILD_PATH}|g" \
    -e "s|WORKDIR_VAR|${WORKDIR}|g" \
    -e "s|SERVER_PATH_VAR|${SERVER_PATH}|g" \
    -e "s|NODE_VERSION_VAR|${NODE_VERSION}|g" \
    -e "s|USERNAME_VAR|${USERNAME}|g" \
    -e "s|PEM_FILE_VAR|${PEM_FILE}|g" \
    -e "s|REPO_VAR|${REPO_URL}|g" \
    -e "s|DEPLOY_PATH_VAR|${DEPLOY_PATH}|g" \
    -e "s|BRANCH_NAME_VAR|${BRANCH_NAME}|g" ./templates/node_template.jenkinsfile  > "$FILE_NAME.jenkinsfile"

    echo "File generated! ${FILE_NAME}"    
}

generate_meteor() {
    sed -e "s|SERVER_IP_VAR|${IP}|g" \
    -e "s|BUILD_PATH_VAR|${BUILD_PATH}|g" \
    -e "s|WORKDIR_VAR|${WORKDIR}|g" \
    -e "s|SERVER_PATH_VAR|${SERVER_PATH}|g" \
    -e "s|NODE_VERSION_VAR|${NODE_VERSION}|g" \
    -e "s|USERNAME_VAR|${USERNAME}|g" \
    -e "s|PEM_FILE_VAR|${PEM_FILE}|g" \
    -e "s|REPO_VAR|${REPO_URL}|g" \
    -e "s|DEPLOY_PATH_VAR|${DEPLOY_PATH}|g" \
    -e "s|BRANCH_NAME_VAR|${BRANCH_NAME}|g" ./templates/meteor_template.jenkinsfile  > "$FILE_NAME.jenkinsfile"

    echo "File generated! ${FILE_NAME}"
}