//
//  ViewController.m
//  sobotsdkdemo
//
//  Created by lizhihui on 2017/11/6.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import "ReactView.h"
#import "AppDelegate.h"
#import "SobotVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  // 设置RN页面的大小
 ReactView * reactView = [[ReactView alloc] initWithFrame:CGRectMake(0,64,CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds) -64)];
  // 将RN 页面添加到原生创建的页面上
  [self.view addSubview:reactView];
  
  // 注册通知
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doPushNotification:) name:@"startSobot" object:nil];
}


- (void)doPushNotification:(NSNotification *)notification{
  NSLog(@"成功收到===>通知");
  SobotVC *sobotvc = [[SobotVC alloc]init];
  
  AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  
  [app.nav pushViewController:sobotvc animated:YES];
  
  //注意不能在这里移除通知否则pus进去后有pop失效
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
