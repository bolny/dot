# Brendon's dotfiles

The dot files are managed by GNU stow. To use it do the following:

To link a dot files, cd to `home` or `work` and run:

```bash
stow --verbose --dotfiles --target="$HOME" "<name of package>"
```

where the "name of package" is the subdir of the app to link. For example:

```bash
stow --dotfiles -v -t "$HOME" "fish"
```

You can delete the existing links by adding `-D` or `--delete` or overwrite them
with `-R` or `--restow`. The `-D` or `--dir` argument is handy if you want to
use this outside of the `work` or `home` directory
