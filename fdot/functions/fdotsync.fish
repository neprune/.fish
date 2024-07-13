function fdotsync --description 'Update fdot.'

    cd $fdot_dir
    git stash
    git pull
    git stash pop
    fisher update "$fdot_dir/fdot"

end
