function fdotpush --description 'Push fdot changes.'

    cd $fdot_dir
    git add .
    git commit -m "update"
    git push

end
