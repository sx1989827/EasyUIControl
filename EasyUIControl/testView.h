//
//  testView.h
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/25.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import "EasyUIControl.h"

@interface testView : EasyUIView
@property (strong, nonatomic) IBOutlet UILabel *lbTest;
@property (strong, nonatomic) IBOutlet UILabel *lbTest2;
@property (strong, nonatomic) IBOutlet EasyUIButton *btnTest;
- (IBAction)onClick:(id)sender;
@property (strong, nonatomic) IBOutlet EasyLabel *lbTest3;

@end
