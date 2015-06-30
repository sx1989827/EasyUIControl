//
//  EasyLabel.h
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/26.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EasyLabel : UILabel
/**
 *  圆角的度数
 */
@property (assign,nonatomic) CGFloat radius;
/**
 *  边框额宽度
 */
@property (assign,nonatomic) CGFloat borderWidth;
/**
 *  边框的颜色
 */
@property (strong,nonatomic) UIColor* borderColor;
/**
 *  是否显示顶部的分割线
 */
@property (assign,nonatomic) BOOL bTopGap;
/**
 *  是否显示底部的分割线
 */
@property (assign,nonatomic) BOOL bBottomGap;
/**
 *  添加带属性的text
 *
 *  @param text    文本内容
 *  @param font    字体
 *  @param color   前景色
 *  @param bkcolor 背景色
 */
-(void)addText:(NSString *)text Font:(UIFont*)font Color:(UIColor*)color BkColor:(UIColor*)bkcolor ;
/**
 *  清空带属性的文本
 */
-(void)deleteText;
@end
