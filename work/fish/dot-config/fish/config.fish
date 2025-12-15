if status is-interactive
    # Homebrew setup
    set -x PATH /opt/homebrew/bin $PATH
    set -x PATH /opt/homebrew/sbin $PATH
    set -x HOMEBREW_BUNDLE_FILE_GLOBAL "$HOME"/.config/homebrew/Brewfile
    # This tells programs that integrate with docker where to look.
    set -x DOCKER_HOST "unix:///Users/bolaney/.colima/default/docker.sock"

    # Supress greeting by setting it to an empty function
    set -g fish_greeting

    # Use homebrew curl
    if test -d (brew --prefix)"/opt/curl/bin"
        set -x PATH (brew --prefix)/opt/curl/bin $PATH
    else
        echo "Homebrew curl not available."
    end

    # Completions
    if test -d (brew --prefix)"/share/fish/completions"
        set -p fish_complete_path (brew --prefix)/share/fish/completions
    else
        echo "Fish completetions not available."
    end

    # Package completions
    if test -d (brew --prefix)"/share/fish/vendor_completions.d"
        set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
    else
        echo "Homebrew package completions for fish not available."
    end

    # FZF integration
    if type -q fzf
        fzf --fish | source
    else
        echo "FZF not available."
    end

    # Set up starship prompt
    if type -q starship
        set -x STARSHIP_LOG error
        starship init fish | source
    else
        echo "Starship not available."
    end

    # Set up ls colorscheme
    if type -q vivid
        set -x LS_COLORS (vivid generate solarized-light)
    else
        echo "Vivid not available."
    end

    # Set up bat theme to provide syntax highlighting to terminal programs.
    set -x BAT_THEME "Solarized (light)"

    # Set up ergonomic alternatives to common commands
    if type -q zoxide
        zoxide init fish | source
        alias cd="z" # Use zoxide instead of cd
    else
        echo "Zoxide not available."
    end

    if type -q eza
        alias ls="eza" # Use eza instead of ls
        alias tree="eza --tree" # Use eza instead of tree
    else
        echo "Eza not available."
    end

    if type -q rg
        alias grep="rg" # Use rg instead of grep
    else
        echo "Ripgrep not available."
    end

    if type -q fd
        alias find="fd" # Use fd instead of find
    else
        echo "Fd not available."
    end

    if type -q bat
        alias cat="bat" # Use bat instead of cat
    else
        echo "Bat not available."
    end

    if type -q delta
        alias diff="delta" # use delta instead of diff
    else
        echo "Delta not available."
    end

    if type -q trash
        function rm
            if test "$argv[1]" = -rf -o "$argv[1]" = -fr
                # Handle rm -rf by calling trash instead
                trash $argv[2..-1]
            else
                # Handle other rm commands by calling trash
                trash $argv
            end
        end
    else
        echo "Trash not available."
    end

    if type -q hx
        set -x EDITOR hx
    else
        echo "Helix not available."
    end

    # useful aliases
    alias l="eza" # List files
    alias t="eza --tree" # list files as Tree
    alias w="chawan" # Web browse
    alias g="git" # source Gontrol
    alias s="rg" # Search inside files
    alias f="fd" # Find files
    alias c="bat" # Cat file
    alias v="hx" # View file in editor
    alias d="delta" # Diff files
    alias r="trash" # Removes file

    # Personal bins
    set -x PATH "$HOME"/.bin $PATH
    set -x PATH "$HOME"/.local/bin $PATH

    # Private bins
    set -x PATH "$HOME"/Source/_bin $PATH

    if test -e "$HOME/.secrets.fish"
        source "$HOME/.secrets.fish"
    end
end
