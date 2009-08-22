## Installing:

    # get the mac SDL pre-requisites:
    sudo port install libsdl libsdl_mixer libsdl-framework libsdl_gfx-framework libsdl_image-framework libsdl_mixer-framework libsdl_sound-framework libsdl_gfx libsdl_sound libsdl_image libsdl_ttf

    # (annoying; rubygame's makefile to ignore the missing subsystems doesn't work, so we need to install all of gfx, image, etc even tho we don't need them)

    # get rubygame, a ruby API that interacts with SDL
    sudo gem install rubygame

    # get RSDL, a weird japanese ruby wrapper that stops SDL from segfaulting strangely
    # more at: http://www.kumaryu.net/?(Ruby)+Ruby%2FSDL%CD%D1ruby
    wget "http://www.kumaryu.net/?c=plugin;plugin=attach_download;p=%28Ruby%29+Ruby%2FSDL%CD%D1ruby;file_name=rsdl-0.1.1.tar.gz" -o rsdl-0.1.1.tar.gz

    # remove the -arch ppc arguments from the Makefile or make will bomb while trying to make ppc binaries
    vi Makefile
    make
    make install

    # now run app-racket with rsdl:
    rsdl app-racket.rb