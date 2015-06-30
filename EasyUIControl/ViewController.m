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
    viewTest.lbTest2.text=@"大发发回复我剪短发是否为其llwe";
    CGFloat height=[viewTest compressedHeight:0];
    viewTest.frame=CGRectMake(0, 0, viewTest.bounds.size.width, height);
    viewTest.autoresizingMask=UIViewAutoresizingFlexibleWidth;
    viewTest.bkImgView.image=[UIImage imageNamed:@"Image"];
    UILabel *lb=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 0)];
    lb.text=@"123";
    lb.backgroundColor=[UIColor lightGrayColor];
    viewTest.leftView=lb;
    lb=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 0)];
    lb.text=@"fwee";
    lb.backgroundColor=[UIColor lightTextColor];
    viewTest.rightView=lb;
    [viewTest.lbTest3 addText:@"dfdfafd213" Font:[UIFont systemFontOfSize:15] Color:[UIColor redColor] BkColor:nil];
    [viewTest.lbTest3 addText:@"wwwsx" Font:[UIFont systemFontOfSize:18] Color:[UIColor blueColor] BkColor:[UIColor yellowColor]];
    [viewTest.lbTest3 deleteText];
    [viewTest.lbTest3 addText:@"fwe" Font:[UIFont systemFontOfSize:18] Color:[UIColor blueColor] BkColor:[UIColor yellowColor]];
    [self.view addSubview:viewTest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end







