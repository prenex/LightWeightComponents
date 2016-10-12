# LightWeightComponents
Light-weight component patterns for C++. Like a framework that is able to do DI, but sucks less so much that it didn't became a framework at all in the end lol :-)

Details:
========
A really small example that shows a good pattern in component based C++ programming. First I wanted to make a framework that is able to do dependency injection like things but is suckless and came up with the idea to express more in plain code than that. This is the result which can be used for building plugin-based architectures while keeping the static linkage and easy usage. This enables 3rd party developers to easily add code to your codebase while having a clean structure. Also this enables something that looks like a sane dependency injection without any weird "annotation" but keeping a very clean code.

Architecture:
=============
* The main file should not contain anything else just the interfacing modules and implementation components and the main calling a controller...
* Interfacing module: this is a header of a class that the implementers implement, but delegate to the implementers.
* The way of delegation (1:1 or 1:n and exception handling etc) can be seen in the code of the interfacing module directly!
* Implementation module: this is a directory with a header file of the implementation. The cpp for the header has the main entry, but there can be a lot of "normal" files and classes below this directory that belongs to the public interface named ComponentImpl.
* Dependency Injection-like things can be done by just creating the interfacing module class. That is all!

Actually this can be used in that way that the whole "system" starts later than the main at a random point. I hope you see how.
So this is kind of a static module/plugin system or pattern where instead of knowing what this or that "container" do, you see everything explained in code. This should make it easier to grasp the things even for those who don't know these techniques and hopefully the whole approach is more cleaner than its heavyweight counterparts.
