//
//  EasyLabel.m
//  EasyUIControl
//
//  Created by 孙昕 on 15/6/26.
//  Copyright (c) 2015年 孙昕. All rights reserved.
//

#import "EasyLabel.h"
@interface EasyLabel()
{
    CGFloat radiusView;
    CGFloat borderWidthView;
    UIColor* borderColorView;
    UILabel *viewTopGap;
    UILabel *viewBottomGap;
    NSMutableAttributedString *attrString;
}
@end
@implementation EasyLabel
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
    attrString=[[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
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

-(void)addText:(NSString *)text Font:(UIFont*)font Color:(UIColor*)color BkColor:(UIColor*)bkcolor
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

@end







