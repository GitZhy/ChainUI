//
//  UILabel+Chain.m
//  HLChain
//
//  Created by HLin on 2017/12/26.
//  Copyright © 2017年 HLChain. All rights reserved.
//

#import "UILabel+Chain.h"

@implementation UILabel (Chain)

- (UILabel *(^)(CGRect))lab_frame
{
    return ^(CGRect frame){
        [self setFrame:frame];
        return self;
    };
}

- (UILabel *(^)(UIFont *))lab_font
{
    return ^(UIFont *font){
        [self setFont:font];
        return self;
    };
}

- (UILabel *(^)(NSString *))lab_text
{
    return ^(NSString *text){
        [self setText:text];
        return self;
    };
}

- (UILabel *(^)(UIColor *))lab_textColor
{
    return ^(UIColor *color){
        [self setTextColor:color];
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))lab_textAlignment
{
    return ^(NSTextAlignment textAlignment){
        [self setTextAlignment:textAlignment];
        return self;
    };
}

- (UILabel *(^)(UIView *))lab_supView
{
    return ^(UIView *view){
        [view addSubview:self];
        return self;
    };
}

- (UILabel *(^)(UIColor *))lab_backgroundColor
{
    return ^(UIColor *color){
        [self setBackgroundColor:color];
        return self;
    };
}

- (void)setLab_frame:(UILabel *(^)(CGRect))lab_frame{}
- (void)setLab_font:(UILabel *(^)(UIFont *))lab_font{}
- (void)setLab_text:(UILabel *(^)(NSString *))lab_text{}
- (void)setLab_textColor:(UILabel *(^)(UIColor *))lab_textColor{}
- (void)setLab_textAlignment:(UILabel *(^)(NSTextAlignment))lab_textAlignment{}
- (void)setLab_supView:(UILabel *(^)(UIView *))lab_supView{}
- (void)setLab_backgroundColor:(UILabel *(^)(UIColor *))lab_backgroundColor{};

+ (UILabel *)label_makeProperty:(void(^)(UILabel *make))block
{
    UILabel *label = [[UILabel alloc] init];
    block(label);
    return label;
}
@end
