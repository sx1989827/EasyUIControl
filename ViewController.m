//
//  ViewController.m
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/25.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _lbTest.text=@"大发发回复我剪短发是否为其蜂王浆而服务嗯哼i 额外分为把附件为方便玩家为分为wefew微积分i112";
     _lbTest2.text=@"大发发回复我剪短发是否为其蜂王浆而服务嗯哼i 额外分为把附件为方便玩家为分为wefew微积分i112";
    NSLog(@"%lf",[_viewTest compressedHeight:0]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end







