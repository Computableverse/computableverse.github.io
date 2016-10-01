---
title: Guide to installing stagit on macOS / OSX
date: 2016-10-01
category: [guide]
---

1. First we need to install `libgit2` dependency of `stagit`
    
        brew install libgit2
    
    This will install `libgit2` in the location: `/usr/local/Cellar/libgit2/0.24.1/` (the 0.24.1  version may vary, regardless home-brew will output the location where the library was installed, so take a note of it).

2. Clone the stagit repository, since we will be building it on our own.
    
        git clone git://git.2f30.org/stagit.git
        
    Now before moving on, you can either choose to build from the latest master commit, or checkout a version before building. If you want to build a version, find all the versions using:
    
        git tags -l

    Then 
    
        # git checkout tags/<version> 
        # e.g.:
        git checkout tags/0.4
        
3. Now edit the `config.mk` file in the directory as follows:

        # add /share/ after PREFIX
        MANPREFIX = ${PREFIX}/share/man
        
        ...
        
        # set the library path as determined in step 1
        GITINC = /usr/local/Cellar/libgit2/0.24.1/include/
        GITLIB = /usr/local/Cellar/libgit2/0.24.1/lib/
        
4. Go back to command line and run:

        make
        make install
        
If all went well, you can now `man stagit` and start using it.