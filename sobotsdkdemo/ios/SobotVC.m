//
//  SobotVC.m
//  sobotsdkdemo
//
//  Created by lizhihui on 2017/11/6.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "SobotVC.h"

#import <SobotKit/ZCUIChatController.h>
#import <SobotKit/SobotKit.h>
//#import "ZCSobot.h"
//#import "ZCUIChatController.h"
//#import <SobotKit/ZCUIChatController.h>
@interface SobotVC ()

@end

@implementation SobotVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor yellowColor];
  
  UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
  btn.backgroundColor = [UIColor redColor];
  [btn setTitle:@"SDK" forState:UIControlStateNormal];
  btn.frame = CGRectMake(100, 100, 100, 100);
  [btn addTarget:self action:@selector(openSDK) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:btn];
}

-(void)openSDK{
  //  初始化配置信息
  ZCLibInitInfo *initInfo = [ZCLibInitInfo new];
  initInfo.appKey = @"1ff3e4ff91314f5ca308e19570ba24bb";
  initInfo.userId = @"123";
  
  ZCKitInfo *uiInfo=[ZCKitInfo new];
  // 导航、客服气泡、线条的颜色
//  uiInfo.customBannerColor  = [UIColor redColor];
  // 左边气泡的颜色
          uiInfo.leftChatColor = [UIColor redColor];
  
  // 右边气泡的颜色
          uiInfo.rightChatColor = [UIColor yellowColor];
  [[ZCLibClient getZCLibClient] setLibInitInfo:initInfo];
  
  // 启动
  [ZCSobot startZCChatView:uiInfo with:self target:nil pageBlock:^(ZCUIChatController *object, ZCPageBlockType type) {
    // 点击返回
    if(type==ZCPageBlockGoBack){
      NSLog(@"点击了关闭按钮");
      // 显示导航栏
    }
    
    // 页面UI初始化完成，可以获取UIView，自定义UI
    if(type==ZCPageBlockLoadFinish){
    }
    
  } messageLinkClick:nil];
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
