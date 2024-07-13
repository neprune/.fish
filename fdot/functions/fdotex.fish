function fdotex --description 'Export a local function to fdot and push it.' --argument-names function_name

    mv "$__fish_config_dir/functions/$function_name.fish" "$fdot_dir/fdot/functions"
    fdotsync
    fdotpush

end
