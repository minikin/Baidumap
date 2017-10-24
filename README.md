# Wrapper of Baidu Map SDK to React Native.

### WIP!

Based on [react-native-baidu-map](https://github.com/lovebing/react-native-baidu-map)

![Custom map style and markers](https://image.ibb.co/nA6pAm/ios2.png)

# Installation

1. `npm i https://github.com/minikin/Baidumap.git#develop --save`
2. `react-native link`

# Additional steps
## Xcode

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
    `[RCTBaiduMapViewManager initSDK:@"YOU BAIDU KEY"];`

5. Build project: `Cmd + B`

## Andorid