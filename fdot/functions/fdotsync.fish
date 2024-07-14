function fdotsync --description 'Update fdot.'

    pushd $fdot_dir
    git stash
    git pull
    git stash pop
    fisher update "$fdot_dir/fdot"
    popd

end
