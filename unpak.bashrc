#.bashrc
# Command «unpack»
unpack ()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xvjf $1    ;;
            *.tar.gz)   tar xvzf $1    ;;
            *.tar.xz)   tar xvJf $1    ;;
            *.bz2)      bunzip2 $1     ;;
            *.rar)      unrar x $1     ;;
            *.gz)       gunzip $1      ;;
            *.tar)      tar xvf $1     ;;
            *.tbz2)     tar xvjf $1    ;;
            *.tgz)      tar xvzf $1    ;;
            *.zip)      unzip $1       ;;
            *.xz)       unxz $1        ;;
            *)          echo "'$1': Unknown method of file compression"  ;;
        esac
        else
            echo "'$1' not found"
    fi
}

# (c) https://gist.github.com/vodolaz095/6437416
