#   demo.app
### Building Guide
With this guide, you should be able to build [demo.app](https://github.com/OS-1337/demo.app) and make it run.

---

##	1.	Setup your Development / Build Envoirment

Generally speaking, you can build it with anything that can build linux and toybox, which at least means a C compiler and means to manipulate files or if necessary make a .config file to build from.

As of now, we're sadly stuck on GCC, but will gladly switch to LLVM/Clang if that's a possibility with Linux.

##	2.	Getting the code ready to build.

Since we want to build for a ```musl + toybox / linux system```, we'll need the requisite packages and sources ready.

- As OS/1337 and it's components are statically compiled against musl, more specifically the same [```musl-cross``` package used to make the reference binaries of toybox](http://landley.net/toybox/downloads/binaries/toolchains/latest/), one should've these ready and extracted into a ```./musl-cross-``` directory below the sourcecode root folder of each to-be-compiled software. [i.e. ```./demo.app/musl.cross-i486``` if you want to [build ```demo.app```](https://github.com/OS-1337/demo.app) for ```i486```].

###	Since [OS/1337](https://github.com/OS-1337/OS1337) and [spm](https://github.com/OS-1337/spm) do not handle dependencies at all, you'll have to make shure you compile & ship anything said applications you want to build with it!
Whilst demo.app has no external dependencies - it's a ["Hello World!"](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program) after all - this may apply to your applications depending on what you want to build or use for.
- This means you'll have to ship your own [runtimes](https://en.wikipedia.org/wiki/Runtime_library) (i.e. [OpenJDK](https://en.wikipedia.org/wiki/OpenJDK)), [Interpreters](https://en.wikipedia.org/wiki/Interpreter_(computing)) (i.e. [Python](https://en.wikipedia.org/wiki/Python_(programming_language))), and necessary [libraries](https://en.wikipedia.org/wiki/Library_(computing)) (i.e. [LibreSSL](https://en.wikipedia.org/wiki/LibreSSL) and [libcurl](https://en.wikipedia.org/wiki/CURL#libcurl)) required to run it with your software!


##	3.	Make shure you have everything in place.

If you have all the necessary parts in place then you should be able to just let it automatically build demo.app from source on your machine.

- Please make shure to have adequate system resources in terms of CPU, RAM, Storage at hand. Since [```demo.app```](https://github.com/OS-1337/demo.app) is a very small project, it should take just a few seconds.