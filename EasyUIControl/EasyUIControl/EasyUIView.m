//
//  EasyUIView.m
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/25.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import "EasyUIView.h"
@interface EasyUIView()
{
    CGFloat radiusView;
    CGFloat borderWidthView;
    UIColor* borderColorView;
    UILabel *viewTopGap;
    UILabel *viewBottomGap;
    UIImageView *bkImgView;
    UIView *viewLeft;
    UIView *viewRight;
}
@end
@implementation EasyUIView
-(instancetype)init
{
    if(self=[super init])
    {
        [self setup];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if(self=[super initWithFrame:frame])
    {
        [self setup];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if(self=[super initWithCoder:aDecoder])
    {
        [self setup];
    }
    return self;
}

-(void)setup
{
    viewTopGap=[[UILabel alloc] init];
    viewTopGap.translatesAutoresizingMaskIntoConstraints=NO;
    viewTopGap.backgroundColor=[UIColor groupTableViewBackgroundColor];
    viewTopGap.hidden=YES;
    [self addSubview:viewTopGap];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[viewTopGap]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(viewTopGap)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[viewTopGap(==1)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(viewTopGap)]];
    viewBottomGap=[[UILabel alloc] init];
    viewBottomGap.translatesAutoresizingMaskIntoConstraints=NO;
    viewBottomGap.backgroundColor=[UIColor groupTableViewBackgroundColor];
    viewBottomGap.hidden=YES;
    [self addSubview:viewBottomGap];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[viewBottomGap]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(viewBottomGap)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[viewBottomGap(==1)]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(viewBottomGap)]];
    bkImgView=[[UIImageView alloc] initWithFrame:self.bounds];
    bkImgView.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self addSubview:bkImgView];
    [self sendSubviewToBack:bkImgView];
}

-(CGFloat)radius
{
    return radiusView;
    
}

-(void)setRadius:(CGFloat)radius
{
    self.layer.masksToBounds=YES;
    self.layer.cornerRadius=radius;
    radiusView=radius;
}

-(CGFloat)borderWidth
{
    return borderWidthView;
}

-(void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.masksToBounds=YES;
    self.layer.borderWidth=borderWidth;
    borderWidthView=borderWidth;
}

-(UIColor*)borderColor
{
    return borderColorView;
}

-(void)setBorderColor:(UIColor *)borderColor
{
    self.layer.masksToBounds=YES;
    self.layer.borderColor=borderColor.CGColor;
    borderColorView=borderColor;
}

-(BOOL)bTopGap
{
    return viewTopGap.hidden;
}

-(void)setBTopGap:(BOOL)bTopGap
{
    viewTopGap.hidden=!bTopGap;
}

-(BOOL)bBottomGap
{
    return viewBottomGap.hidden;
}

-(void)setBBottomGap:(BOOL)bBottomGap
{
    viewBottomGap.hidden=!bBottomGap;
}

-(UIView*)leftView
{
    return viewLeft;
}

-(void)setLeftView:(UIView *)leftView
{
    [self addSubview:leftView];
    leftView.frame=CGRectMake(0, 0, leftView.bounds.size.width, self.bounds.size.height);
    leftView.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleRightMargin;
    viewLeft=leftView;
}

-(UIView*)rightView
{
    return viewRight;
}

-(void)setRightView:(UIView *)rightView
{
    [self addSubview:rightView];
    rightView.frame=CGRectMake(self.bounds.size.width-rightView.bounds.size.width, 0, rightView.bounds.size.width, self.bounds.size.height);
    rightView.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleLeftMargin;
    viewRight=rightView;
}

-(CGFloat)compressedHeight:(CGFloat)gap
{
    NSInteger count=0;
    for(UIView *view in self.subviews)
    {
        if([view isKindOfClass:[UILabel class]])
        {
            UILabel *lb=(UILabel*)view;
            if(lb.numberOfLines==0)
            {
                count++;
                lb.preferredMaxLayoutWidth=[UIScreen mainScreen].bounds.size.width-(self.bounds.size.width-lb.bounds.size.width+gap);
                lb.lineBreakMode=NSLineBreakByCharWrapping;
            }
        }
    }
    CGFloat height=[self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    if(count>1)
    {
        height++;
    }
    return height;
}

-(UIImageView*)bkImgView
{
    return bkImgView;
}
@end







