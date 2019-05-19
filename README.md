# turtlecoin-mobile-wallet-qt
A rewrite of TonChan in C++ with Qt for (hopefully) faster wallet syncing performance

## Building

### Setup

* `git clone --recurse-submodules https://github.com/zpalmtree/turtlecoin-mobile-wallet-qt.git`

If you already git cloned and need to init the submodule: `git submodule update --init --recursive`

* Next you need to install qtcreator. I suggest you *do not* install from your distro repos - Mine were missing some android components.
* Instead, install directly from their site - https://www.qt.io/download-qt-installer
* I can't remember if there's any options to select.. I think I chose the default.
* Now we need to setup some android build targets in qtcreator.
Start by following [this guide](https://doc.qt.io/qt-5/android-getting-started.html).

I'm afraid it is a very poor guide and leaves a lot out. I do not recall how I got mine working, but it involved a lot of googling. Good luck.

Once qtcreator is setup, we need to import the project into qtcreator.

* Double click the [src/TonChan.pro](src/TonChan.pro) file, or run `qrcreator src/TonChan.pro`
* It will ask you what build targets you want to support
* Choose the android ones.
* Open android studio (May need to install it)
* Create an android emulator (Don't need to launch it)
* Return to qtcreator

### Compilation

* Click the run button
* Choose x86, release (debug if developing?)
* Choose the android emulator you created previously
* It should open the android emulator, and open the app.
