####################### SSH KEY FOR GIT ###################################
eval `ssh-agent -s` && ssh-add -k
####################### To be added to git account settings ################


###################### GIT PARAMETERS #####################################
export GIT_PARENT_DIR=~
export GIT_REPO_NAME=codewars-challenge
export GIT_BRANCH_NAME=master
export GIT_USER=2Math0
export GIT_EMAIL=toto.mm50.tm@gmail.com
export GITHUB_ACCESS_TOKEN=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
export GIT_USER_UPSTREAM=2Math0


############################################################################
#### DO NOT EDIT BELOW THIS LINE: derived variables
############################################################################

export GIT_REMOTE_URL=git@github.com:$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_URL_HTTPS=https://github.com/$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_UPSTREAM=$GIT_USER_UPSTREAM/$GIT_REPO_NAME


####################### Git Repo where notebooks will be pushed ############
cd $GIT_PARENT_DIR && git clone $GIT_REMOTE_URL_HTTPS



####################### Change in jupyter config ###########################
if [ ! -f ~/.jupyter/jupyter_notebook_config.py ]; then
   jupyter notebook --generate-config
fi

echo 'c.NotebookApp.disable_check_xsrf = True' >> ~/.jupyter/jupyter_notebook_config.py

cp $GIT_PARENT_DIR/codewars-challenge/config ~/.ssh/config
