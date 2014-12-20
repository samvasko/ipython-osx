# IPython notebook native client or Mac
Notebook is a great program, but it missing some good integration with host operating system. This project aims to fix that without having to ship custom JS. If you are asking what exactly does that mean, check the roadmap below.

**Every contribution is very welcome! :beers:** 

### Building
1. Clone the repo
2. Open the Xcode project
3. Run it

### Usage
**Not ready yet**

### Overview
IPython notebook is a web based computational environment, so the general overview looks like this `[ Browser ] <-> [ JS ] <-> [ Server ]. This project aims to replace the browser with a native client without sacrificing compatibility. 

### Roadmap
I have a feeling that there is plenty 

**Alpha**
 - [ ] Creating, opening, closing and saving `.ipnb` files from Finder
 - [ ] Drag & drop opening
 - [ ] Connect to IPython server using a dialog
 - [ ] Swift <-> JS interop
 - [ ] Using native controls for 80% of actions (menu/toolbar)
 - [ ] Multiple document support
 - [ ] Crude Website/Public Release
 - [ ] Downloadable build

**Beta** 
- [ ] Ability to run/stop IPython server in background.
- [ ] Detect currently running servers and connect to them
- [ ] `brew cask` support
- [ ] Print support
- [ ] Exporting
- [ ] Tabs? 
  [ ] All web based controls replaced by native 
  
  **1.0** 
  - [ ] Being awesome
  - [ ] No bugs :satisfied: 