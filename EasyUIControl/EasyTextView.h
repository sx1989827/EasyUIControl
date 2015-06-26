//
//  EasyTextView.h
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/26.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlaceholderTextView.h"
@interface EasyTextView : PlaceholderTextView
@property (assign,nonatomic) CGFloat radius;
@property (assign,nonatomic) CGFloat borderWidth;
@property (strong,nonatomic) UIColor* borderColor;
@property (assign,nonatomic) BOOL bTopGap;
@property (assign,nonatomic) BOOL bBottomGap;
@property (strong,nonatomic,readonly) UIImageView *bkImgView;
-(void)addText:(NSString *)text Font:(UIFont*)font Color:(UIColor*)color BkColor:(UIColor*)bkcolor Link:(NSString*)link;
-(void)deleteText;
@end
