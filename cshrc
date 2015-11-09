setenv STDHOME /agl/share/std/
if (-f $STDHOME/def/.cshrc) then
    source $STDHOME/def/.cshrc
else  
    source $HOME/.cshrc.$USER
endif

set path=(/bin $path )
setenv PATH /usr/java/jdk1.5.0_11/bin:.:${PATH}
set prompt="%{\033[33m%}[%C9]"
