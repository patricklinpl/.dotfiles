# android-setup

## Adhell 2 Package Disabler

### KNOX 
[KNOX SDK Enterprise Key Renewal](https://seap.samsung.com/license-keys)
1. License Keys
2. Legacy SDKs > Knox Standard SDK > Enterprise license key > generate license key

## Tasker

Refer to : [Toggle Mobile Data / Location without root](https://www.reddit.com/r/tasker/comments/4zsi0e/project_share_toggle_settings_eg_location_mobile/?st=IZ3F16S4&sh=d7061415)

### Quick Toggles 

```
adb shell
settings put secure sysui_qs_tiles RotationLock,Wifi,Bluetooth,Location,Flashlight,AirplaneMode,DormantMode,work,MobileData,Hotspot
``` 
