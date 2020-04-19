Current version: titanium
# CodeAurora Forum // BrainRepo
### Based on CAF. The most intelligent brain environment
More powerful, faster and lighter than AOSP based repos. Come and build with CAF!

---------
- Latest CAF Intel Driver: April 19, 2020
- Latest CAF Common Driver: April 11, 2020
- Latest AOSP legacy update repo: October 3, 2019

# Building CAF for Chipset
Init and sync the repo
```
git clone https://github.com/CodeAuroraForum/BrainRepo -b titanium
repofastsync
```
Export and build
```
. build/envsetup.sh

lunch caf_(chipset_id)-eng
mka bacon
```

# Pull Requests
Pull requests are open in the new titanium release. Go and improve the code!

# Adding dependencies
You must add all dependencies for your chipset including kernel and its headers, chipset tree, common processor tree and product/vendor files

# Tools
### COVID-19 extra build
```
export EXTRA_BUILD_CODE=COVID-19
```
