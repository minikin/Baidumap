# Baidu Map SDK modules and view for React Native(Android & IOS), support react native 0.40+.

More info on the way.


# Xcode

1. Project navigator -> Libraries -> Add Files to select baidumap/ios/RCTBaiduMap.xcodeproj

2. Project navigator -> Build Phases -> Link Binary With Libraries select libRCTBaiduMap.a

3. Project navigator -> Build Settings -> Search Paths， Framework search paths add  baidumap/ios/lib，Header search paths add baidumap/ios/RCTBaiduMap

4. Add dependencies from folder baidumap/ios/lib in General -> Linked Frameworks and Libraries. 

<!-- 5. CoreLocation.framework, QuartzCore.framework、OpenGLES.framework、SystemConfiguration.framework、CoreGraphics.framework、Security.framework、libsqlite3.0.tbd、CoreTelephony.framework、
libstdc++.6.0.9.tbd -->

5. Add BaiduMapAPI_Map.framework/Resources/mapapi.bundle
