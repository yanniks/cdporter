### CyanDream porter
#### Easily port CyanogenMod devices to CyanDream

How to use it: Fire up a terminal and clone this repo to e.g. your Desktop. After that, run the tool like this: `./port mako` if you'd like to port CyanDream to the device mako (Nexus 4). It will automatically get the device tree from the CyanogenMod GitHub account and modify it for CyanDream. If you already already have a device tree on your computer, just enter the path instead of the device codename. After that, just push it to a new Git repo, the commit is already created. If you want to skip some steps, take a look to the `config` file:

Set the entry you want to change to false. `splash` is for the splash screen, `cmgh` for the check if there is a device tree on GitHub, `vendor` changing the vendor from vendor/cm to vendor/cyandream, `pname` is for the device name, e.g. cm_mako. It will be changed to cd_mako. `deps` modifies the cm.dependencies file for CyanDream and `git` creates the Git commit.
You'll have to add the device-specific vendor for WiFi drivers and similar manually, as the CM team does not have them in their cm.dependencies file. An upcoming update should make it possible to do that automatically.

A big thanks goes to the guys from CyanogenMod for "roomservice", I use it for searching the right device repo.
