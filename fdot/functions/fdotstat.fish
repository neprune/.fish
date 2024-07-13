function fdotstat --description 'Status of the fdot setup.'

    echo "===> Unexported functions:"
    ls $__fish_config_dir/functions | rg '(.*).fish' -or '$1' | sed 's/^/ - /'

    echo ""
    echo "===> Untracked external plugins:"
    set EXTERNAL_PLUGINS $(fisher list | grep --invert-match '^/.*' | grep --invert-match 'jorgebucaran/fisher' | sort)
    set TRACKED_EXTERNAL_PLUGINS $(cat $fdot_dir/external_plugins | sort)
    for plugin in $EXTERNAL_PLUGINS
        if not contains $plugin $TRACKED_EXTERNAL_PLUGINS
            echo " - $plugin"
        end
    end

    echo ""
    echo "===> Git status of fdot checkout:"
    cd $fdot_dir && git status --porcelain | sed 's/^/ - /'
end
