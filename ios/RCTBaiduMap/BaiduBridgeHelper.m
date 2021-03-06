//
//  BaiduBridgeHelper.m
//  RCTBaiduMap
//
//  Created by Sasha Prokhorenko on 24.10.17.
//  Copyright © 2017 Sasha Prokhorenko All rights reserved.
//

#import "BaiduBridgeHelper.h"
#import <React/RCTLog.h>
#import "Constants.h"

@implementation BaiduBridgeHelper

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE(BaiduBridgeHelper)

RCT_EXPORT_METHOD(setPinImageWith:(NSString *)imageName) {
  UIImage *image = [UIImage imageWithContentsOfFile: imageName];
  if (image != nil) {
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:image forKey:pinImageKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:sendCustomPinImage object:self userInfo:userInfo];
  }
}

RCT_EXPORT_METHOD(setCustomMapStyleWith:(NSString *)JSONFile) {
  NSDictionary *userInfo = [NSDictionary dictionaryWithObject:JSONFile forKey:jsonFileKey];
  [[NSNotificationCenter defaultCenter] postNotificationName: customMapStyleWithJSON object:self userInfo: userInfo];
}

RCT_EXPORT_METHOD(customMapStyle:(BOOL)enable) {
  NSDictionary *userInfo = [NSDictionary dictionaryWithObject: [NSNumber numberWithBool:enable]  forKey: customMapKey];
  [[NSNotificationCenter defaultCenter] postNotificationName: useCustomMapStyle object:self userInfo: userInfo];
}

@end
