//
//  ViewController.m
//  登录测试
//
//  Created by 道标朱 on 16/7/27.
//  Copyright © 2016年 道标朱. All rights reserved.
//

#import "ViewController.h"
#import <ShareSDK/ShareSDK.h>
#import <ShareSDKConnector/ShareSDKConnector.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn  = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = CGPointMake(100, 100);
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
    [ShareSDK getUserInfo:SSDKPlatformTypeTwitter onStateChanged:^(SSDKResponseState state, SSDKUser *user, NSError *error) {
        
        
        if (user) {
//            if (btn.tag == SSDKPlatformTypeTwitter) {
//                //user为用户信息
//            }
        }
    }];
}
@end
