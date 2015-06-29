//
//  EasyUIView.h
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/25.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EasyUIView : UIView
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
 *  背景的图片view
 */
@property (strong,nonatomic,readonly) UIImageView *bkImgView;
/**
 *  左侧view，位置大小保持不变
 */
@property (strong,nonatomic) UIView *leftView;
/**
 *  右侧view，位置大小保持不变
 */
@property (strong,nonatomic) UIView *rightView;
/**
 *  算出自动布局约束的view的高度
 *
 *  @param gap 当前view水平方向上距离viewcontroller的边界的约束的合计
 *
 *  @return 返回计算出的view的高度
 */
-(CGFloat)compressedHeight:(CGFloat)gap;
@end
