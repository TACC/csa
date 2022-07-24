#!/bin/bash 

function check_done() {

    if [[ -d $HOME/.benchpro ]]; then
       printf "Looks like you have already migrated...\n"
       printf "(you have a $HOME/.benchpro)\n" 
       exit 0
    fi
}

function show_old() {

    if [[ -d $HOME/benchpro ]]; then
        cd $HOME/benchpro
        printf "Found existing install:\n"
        git status 
    fi

}

printf "July update 1.5.2\n"
printf "The Git repos have been restructured\n"
printf "Reorganizing...\n"

check_done

#git clone https://github.com/tacc/csa.git ~/.benchpro
git clone https://github.com/mrcawood/csa.git ~/.benchpro

show_old

