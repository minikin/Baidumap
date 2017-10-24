//
//  RCTBaiduMapViewManager.h
//  RCTBaiduMap
//
//  Created by Sasha Prokhorenko on Aug 6, 2016.
//  Copyright © 2016 Sasha Prokhorenko. All rights reserved.
//

#ifndef RCTBaiduMapViewManager_h
#define RCTBaiduMapViewManager_h

#import "RCTBaiduMapView.h"

@interface RCTBaiduMapViewManager : RCTViewManager<BMKMapViewDelegate>

+(void)initSDK:(NSString *)key;
-(void)sendEvent:(RCTBaiduMapView *) mapView params:(NSDictionary *) params;

@end

#endif /* RCTBaiduMapViewManager_h */
