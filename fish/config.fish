if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""

    alias ls='exa --icons'
    alias la='exa --icons -a'
    alias ll='exa -la -F -s=mod -r --icons --git --group-directories-first --git'
    alias lol='clear && fortune | cowsay -f tux | lolcat'

    alias cl="clear"


    fish_vi_key_bindings
    bind -M insert -m default jk backward-char force-repaint
    bind -M insert -m insert \cf accept-autosuggestion force-repaint

    function fish_mode_prompt
      # NOOP - Disable vim mode indicator
    end
    set fish_cursor_default     block      
    set fish_cursor_insert      line       
    set fish_cursor_replace_one underscore 
    set fish_cursor_visual      block

    set fish_cursor_unknown 
end
