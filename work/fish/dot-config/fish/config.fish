if status is-interactive
  # Homebrew setup
  set -x PATH /opt/homebrew/bin $PATH
  set -x PATH /opt/homebrew/sbin $PATH

  set -x HOMEBREW_BUNDLE_FILE_GLOBAL "$HOME"/.config/homebrew/Brewfile

  # Completions
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

  # Set up zoxide
  if type -q zoxide
    zoxide init fish | source
  end

  # Set up ls colorscheme
  if type -q vivid
    set -x LS_COLORS (vivid generate solarized-light)
  end

  # Set up bat theme to provide syntax highlighting to terminal programs.
  set -x BAT_THEME "Solarized (light)"

  # Global python provided by uv
  # Implement when https://github.com/astral-sh/uv/issues/7377 is resolved.

  # Global node provided by volta
  set -x PATH "$HOME"/.volta/bin $PATH

  # Doom bins
  set -x PATH "$HOME"/.config/emacs/bin $PATH

  # Personal bins
  set -x PATH "$HOME"/.bin $PATH
  set -x PATH "$HOME"/.local/bin $PATH

  # useful aliases
  alias l="eza"           # List files
  alias t="eza --tree"    # list files as Tree
  alias w="lynx -vikeys"  # Web browse
  alias q="duck"          # Query search engine
  alias g="git"           # source Gontrol
  alias s="rg"            # Search inside files
  alias f="fd"            # Find files
  alias c="bat"           # Cat file
  #alias z="zoxide"        # ChangeZ directory
  alias v="vim"           # View file in editor
  alias d="delta"         # Diff files
end
