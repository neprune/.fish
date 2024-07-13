# Setup

* Install fish.
* Symlink the _contents_ of `fisher_path.fish` into a `conf.d` directory in the fish config directory (probably `~/.config/fish`).
* Install [fisher](https://github.com/jorgebucaran/fisher).
* Run `set -U fdot_dir $(pwd)` inside this directory.
* Run `fisher install .` inside `fdot`.
* Run `fisher install < external_plugins` to install external plugins, editing as needed.

# Usage

General idea is that you use fish as normal but can move functions into the `fdot` plugin here and push them to git.

Run `fdotstat` to see:
* All unexported functions.
* All installed external plugins that aren't in the file here.
* The git status of this directory.

Run `fdotsync` to:
1. Stash local changes.
2. Pull from master.
3. Pop the stash.
4. Reload the plugin.

Run `fdotpush` to commit local changes and push.

Run `fdotex <function name>`:
1. Move the given function to the plugin directory here.
2. `fdotsync`
2. `fdotpush`

