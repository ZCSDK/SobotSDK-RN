//
//  SobotSDKDemoNative.m
//  sobotsdkdemo
//
//  Created by lizhihui on 2017/11/6.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "SobotSDKDemoNative.h"

@implementation SobotSDKDemoNative
RCT_EXPORT_MODULE(SobotSDKDemoNative)
//RN跳转原生界面
RCT_EXPORT_METHOD(startSobot:(NSString *)msg){
  
  NSLog(@"RN传入原生界面的数据为:%@",msg);
  //主要这里必须使用主线程发送,不然有可能失效
  dispatch_async(dispatch_get_main_queue(), ^{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"startSobot" object:nil];
  });
}

RCT_EXPORT_METHOD(exitSobot:(NSString *)msg){
  
  NSLog(@"RN传入原生界面的数据为:%@",msg);
  //主要这里必须使用主线程发送,不然有可能失效
  dispatch_async(dispatch_get_main_queue(), ^{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"exitSobot" object:nil];
  });
}


@end
