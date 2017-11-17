//
//  ReactView.m
//  sobotsdkdemo
//
//  Created by lizhihui on 2017/11/6.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "ReactView.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
@implementation ReactView

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    
      NSURL *jsCodeLocation;
    
      jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
    
      RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                          moduleName:@"sobotsdkdemo"
                                                   initialProperties:nil
                                                       launchOptions:nil];
    
    [self addSubview:rootView];
    
    rootView.frame = self.bounds;
  }
  return self;
}

@end
