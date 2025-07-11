if status is-interactive
  # Homebrew setup
  set -x PATH /opt/homebrew/bin $PATH
  set -x PATH /opt/homebrew/sbin $PATH

  set -x HOMEBREW_BUNDLE_FILE_GLOBAL "$HOME"/.config/homebrew/Brewfile

  # Homebrew Completions
  if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
  end

  # Package completions
  if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
  end

  # FZF integration
  if type -q fzf
    fzf --fish | source
  end

  # Set up starship prompt
  if type -q starship
    starship init fish | source
  end

  # Set up ls colorscheme
  if type -q vivid
    set -x LS_COLORS (vivid generate solarized-light)
  end

  # Set up bat theme to provide syntax highlighting to terminal programs.
  set -x BAT_THEME "Solarized (light)"

  if type -q zoxide
    zoxide init fish | source
    alias cd="z"            # Use zoxide instead of cd
  end

  if type -q eza
    alias ls="eza"          # Use eza instead of ls
    alias tree="eza --tree" # Use eza instead of tree
  end

  if type -q rg
    alias grep="rg"        # Use rg instead of grep
  end

  if type -q fd
    alias find="fd"        # Use fd instead of find
  end

  if type -q bat
    alias cat="bat"        # Use bat instead of cat
  end

  if type -q delta
    alias diff="delta"     # use delta instead of diff
  end

  if type -q trash
    function rm
      if test "$argv[1]" = "-rf" -o "$argv[1]" = "-fr"
        # Handle rm -rf by calling trash instead
        trash $argv[2..-1]
      else
        # Handle other rm commands by calling trash
        trash $argv
      end
    end
  end

  # NVim is my editor
  set -x EDITOR "nvim"
  alias vi="nvim"
  alias vim="nvim"

  # Other useful aliases
  alias l="eza"           # List files
  alias t="eza --tree"    # list files as Tree
  alias w="cha"           # Web browse
  alias g="git"           # source Gontrol
  alias s="rg"            # Search inside files
  alias f="fd"            # Find files
  alias c="bat"           # Cat file
  alias v="nvim"          # View file in editor
  alias d="delta"         # Diff files
  alias r="trash"         # Removes file

  # Global python provided by uv
  # Implement when https://github.com/astral-sh/uv/issues/7377 is resolved.

  fish_default_key_bindings
end
