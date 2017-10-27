# Wrapper of Baidu Map SDK to React Native.

## WIP!


|      |  |
| ---      | ---       |
| ![Custom map style and markers](https://image.ibb.co/nA6pAm/ios2.png) | ![Custom map style and markers](https://image.ibb.co/mjZufm/andro.png) |

## Features

Will be added soon.

# Installation

1. `npm i https://github.com/minikin/Baidumap.git#develop --save`

## Additional steps
### Xcode

1. Open Xcode project -> navigate to `Libraries` -> select `Add Files to Project` -> navigate to `node_modules/baidumap/ios/` ->
select `RCTBaiduMap.xcodeproj`
![RCTBaiduMap](https://image.ibb.co/dKaQGR/b1.png)
Also add `mapapi.bundle` placed in `node_modules/baidumap/ios/lib/BaiduMapAPI_Map.framework/Resources/`

2. Select your targent -> Navigate to `General` tab -> scroll down to `Linked Frameworks and Libraries` -> press `+` -> select `Add others...` -> navigate to  `node_modules/baidumap/ios/lib` -> select all frameworks.
Do the same for `libcrypto.a` and `libssl.a` placed in `node_modules/baidumap/ios/lib/thirdlibs` . Also add `libsqlite3.0.tbd` and `libstdc++.6.0.9.tbd`
![RCTBaiduMap](https://image.ibb.co/gS3HVm/b2.png)
3. Navigate to `Build Settings` tab -> naviagte to `Search Paths`
Check you paths:
![RCTBaiduMap](https://image.ibb.co/nHUo36/3_1.png)
![RCTBaiduMap](https://image.ibb.co/jgeXVm/3_2.png)
![RCTBaiduMap](https://image.ibb.co/j8WqGR/3_3.png)
![RCTBaiduMap](https://image.ibb.co/iCBCVm/3_4.png)
4. Navigate to `AppDelegate.m` add  `#import "RCTBaiduMapViewManager.h"`

    In `application didFinishLaunchingWithOptions` method call:
    `[RCTBaiduMapViewManager initSDK:@"YOU BAIDU IOS KEY"];`

5. Build project: `Cmd + B`

### Andorid

1. Open Android Studion  -> find `AndroidManifest.xml` add permissions:
```
    <uses-permission android:name="com.android.launcher.permission.READ_SETTINGS" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.READ_PHONE_STATE" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.INTERNET" />
```

2. Still in `AndroidManifest.xml` add Baidu Key

```
        <meta-data
            android:name="com.baidu.lbsapi.API_KEY"
            android:value="YOU BAIDU ANDROID KEY"  />
```

![RCTBaiduMap](https://image.ibb.co/jfzPD6/1.png)

3.  Find `MainApplication.java` and add to `List<ReactPackage> getPackages()` method `new BaiduMapPackage(getApplicationContext())`

![RCTBaiduMap](https://image.ibb.co/gDcpfm/2.png)

4. Locate `settings.gradle` add:
```
include ':baidumap'
project(':baidumap').projectDir = new File(rootProject.projectDir, '../node_modules/baidumap/android/')
```
![RCTBaiduMap](https://image.ibb.co/ne09fm/3.png)

5.  Locate `build.gradle(Module.app` and add `baidumap` to `dependencies`: `compile project(':baidumap')`

![RCTBaiduMap](https://image.ibb.co/gVaLmR/4.png)

6. Build project

## Usage

Will be added soon.


## Credits

Baidumap wrapper is based on [react-native-baidu-map](https://github.com/lovebing/react-native-baidu-map) and developed [@minikin](https://twitter.com/minikin)

## License

Baidumap wraper is released under the MIT license.