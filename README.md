# turtlecoin-mobile-wallet-qt
A rewrite of TonChan in C++ with Qt for (hopefully) faster wallet syncing performance

Note that the subfolder [src/wallet-backend/](src/wallet-backend/) is based on the TurtleCoin core code, with a lot of stuff ripped out.
It has been included in the source tree because qtcreator is hard to use...

## Building

### Setup

Start by pulling down the submodule code. `git submodule init`

* First you need to install qtcreator. I suggest you *do not* install from your distro repos - Mine were missing some android components.
* Instead, install directly from their site - https://www.qt.io/download-qt-installer
* I can't remember if there's any options to select.. I think I chose the default.

Next we need to setup some android build targets in qtcreator.
Start by following [this guide](https://doc.qt.io/qt-5/android-getting-started.html).

I'm afraid it is a very poor guide and leaves a lot out. I do not recall how I got mine working, but it involved a lot of googling. Good luck.

Once qtcreator is setup, we need to import the project into qtcreator.

* Double click the [src/TonChan.pro] file, or run `qrcreator src/TonChan.pro`
* It will ask you what build targets you want to support
* Choose the android ones.
* Hit the build button.
* It should launch an android emulator, and open the app.
