function fdotpush --description 'Push fdot changes.'

    pushd $fdot_dir
    git add .
    git commit -m "update"
    git push
    popd

end
