//
//  ViewController.m
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/25.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import "ViewController.h"
#import "testView.h"
@interface ViewController ()
{
    testView *viewTest;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    viewTest=[[[NSBundle mainBundle] loadNibNamed:@"testView" owner:nil options:nil] lastObject];
    viewTest.translatesAutoresizingMaskIntoConstraints=YES;
    viewTest.lbTest.text=@"大发发回复我剪短发是否为其蜂王浆而服务嗯哼i 额外分为把附件为方便玩家为分为wefew微积分i112";
    viewTest.lbTest2.text=@"大发发回复我剪短发是否为其蜂王浆而服务嗯哼i 额外分为把附件为方便玩家为分为wefew微积分i112";
    CGFloat height=[viewTest compressedHeight:0];
    viewTest.frame=CGRectMake(0, 0, viewTest.bounds.size.width, height);
    viewTest.autoresizingMask=UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:viewTest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end







