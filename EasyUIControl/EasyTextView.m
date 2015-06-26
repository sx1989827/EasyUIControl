//
//  EasyTextView.m
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/26.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import "EasyTextView.h"
@interface EasyTextView()
{
    CGFloat radiusView;
    CGFloat borderWidthView;
    UIColor* borderColorView;
    UILabel *viewTopGap;
    UILabel *viewBottomGap;
    UIImageView *bkImgView;
    NSMutableAttributedString *attrString;
}
@end
@implementation EasyTextView
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

-(void)addText:(NSString *)text Font:(UIFont*)font Color:(UIColor*)color BkColor:(UIColor*)bkcolor Link:(NSString *)link
{
    NSMutableAttributedString *attr=[[NSMutableAttributedString alloc] initWithString:text];
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] initWithCapacity:30];
    if(font!=nil)
    {
        [dic setObject:font forKey:NSFontAttributeName];
    }
    if(color!=nil)
    {
        [dic setObject:color forKey:NSForegroundColorAttributeName];
    }
    if(bkcolor!=nil)
    {
        [dic setObject:bkcolor forKey:NSBackgroundColorAttributeName];
    }
    if(link!=nil)
    {
        [dic setObject:[NSURL URLWithString:link] forKey:NSLinkAttributeName];
    }
    [attr addAttributes:dic range:NSMakeRange(0, text.length)];
    [attrString appendAttributedString:attr];
    self.attributedText=attrString;
}

-(void)deleteText
{
    self.attributedText=nil;
    self.text=@"";
    attrString=[[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
}


-(UIImageView*)bkImgView
{
    return bkImgView;
}
@end
