# LightWeightComponents
Light-weight component patterns for C++. Like a framework that is able to do DI, but sucks less so much that it didn't became a framework at all in the end lol :-)

Details:
========
A really small example that shows a good pattern in component based C++ programming. First I wanted to make a framework that is able to do dependency injection like things but is suckless and came up with the idea to express more in plain code than that. This is the result which can be used for building plugin-based architectures while keeping the static linkage and easy usage. This enables 3rd party developers to easily add code to your codebase while having a clean structure. Also this enables something that looks like a sane dependency injection without any weird "annotation" but keeping a very clean code.

Architecture:
=============
* The main file should not contain anything else just the interfacing modules and implementation components and the main calling a controller...
* Interfacing module: this is a header of a class that the implementers implement. Its code just delegates to the real implementers.
* The way of delegation (1:1 or 1:n and exception handling etc) can be seen in the code of the interfacing module directly!
* Implementation module: this is a directory with a header file of the implementation. The cpp for the header has the main entry, but there can be a lot of "normal" files and classes below this directory that belongs to the public interface named ComponentImpl.
* Dependency Injection-like things can be done by just creating the interfacing module class. That is all!

I have added a non-recursive make that enables one to build *.cpp files and directory structures below component implementation directories. The interfacing headers are on the top level as there should be only 10-50 components in a real application at most and their details should be hidden below their implementation directories. There should be a componentImpl.h and cpp for each and those can use DI easily, but other than that you can create your own structures in the implementation modules.

* The make 'system' uses node.mk files in directories.
* These describe the *.o files created in that directory and further subdirectories
* You can also specify *.a libs at these points.
* In the components directory, you need to fill the top level node.mk for the impl modules. The modules should have cpp files and node.mk files but here I have shown some examples that are header-only and really lightweight. That is also a way to go.

For a simpler architecture without the descending non-recursive make, look at the earlier git commits if you want, but that is only for really small projects.

Actually this can be used in that way that the whole "system" starts later than the main at a random point. I hope you see how.
So this is kind of a static module/plugin system or pattern where instead of knowing what this or that "container" do, you see everything explained in code. This should make it easier to grasp the things even for those who don't know these techniques and hopefully the whole approach is more cleaner than its heavyweight counterparts.
