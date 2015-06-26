//
//  EasyUIButton.m
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/26.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import "EasyUIButton.h"
@interface EasyUIButton()
{
    CGFloat radiusView;
    CGFloat borderWidthView;
    UIColor* borderColorView;
    UILabel *viewTopGap;
    UILabel *viewBottomGap;
    UILabel *lbPlaceholder;
}
@end
@implementation EasyUIButton
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
    lbPlaceholder=[[UILabel alloc] initWithFrame:self.bounds];
    lbPlaceholder.backgroundColor=[UIColor clearColor];
    lbPlaceholder.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    lbPlaceholder.textColor=[UIColor lightGrayColor];
    if(self.contentMode==UIViewContentModeLeft)
    {
        lbPlaceholder.textAlignment=NSTextAlignmentLeft;
    }
    else if(self.contentMode==UIViewContentModeCenter)
    {
        lbPlaceholder.textAlignment=NSTextAlignmentCenter;
    }
    else if(self.contentMode==UIViewContentModeRight)
    {
        lbPlaceholder.textAlignment=NSTextAlignmentRight;
    }
    else
    {
        lbPlaceholder.textAlignment=NSTextAlignmentCenter;
    }
    lbPlaceholder.font=[UIFont systemFontOfSize:self.titleLabel.font.pointSize];
    [self addSubview:lbPlaceholder];
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


-(NSString*)placeholder
{
    return lbPlaceholder.text;
}

-(void)setPlaceholder:(NSString *)placeholder
{
    lbPlaceholder.text=placeholder;
    if([[self titleForState:UIControlStateNormal] isEqualToString:@""] || [self titleForState:UIControlStateNormal]==nil)
    {
        lbPlaceholder.hidden=NO;
    }
    else
    {
        lbPlaceholder.hidden=YES;
    }
}

-(void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    if([title isEqualToString:@""] || title==nil)
    {
        lbPlaceholder.hidden=NO;
    }
    else
    {
        lbPlaceholder.hidden=YES;
    }
}
@end













