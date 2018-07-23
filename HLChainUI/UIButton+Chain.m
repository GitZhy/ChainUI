//
//  UIButton+Chain.m
//  HLChain
//
//  Created by HLin on 2017/12/26.
//  Copyright © 2017年 HLChain. All rights reserved.
//

#import "UIButton+Chain.h"

@implementation UIButton (Chain)

- (UIButton *(^)(CGRect))btn_frame
{
    return ^(CGRect frame){
        [self setFrame:frame];
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))btn_title
{
    return ^(NSString *title, UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIFont *))btn_titleFont
{
    return ^(UIFont *titleFont){
        self.titleLabel.font = titleFont;
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))btn_titleColor
{
    return ^(UIColor *color, UIControlState state){
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))btn_image
{
    return ^(UIImage *image, UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))btn_backgroundImage
{
    return ^(UIImage *image, UIControlState state){
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(CGFloat))btn_cornerRadius
{
    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        return self;
    };
}

- (UIButton *(^)(CGFloat, UIColor *))btn_border
{
    return ^(CGFloat width, UIColor *color){
        self.layer.borderColor = color.CGColor;
        self.layer.borderWidth = width;
        return self;
    };
}

- (UIButton *(^)(id, SEL))btn_targetAction
{
    return ^(id target, SEL acton){
        [self addTarget:target action:acton forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}


- (UIButton *(^)(UIView *))btn_supView
{
    return ^(UIView *supView){
        [supView addSubview:self];
        return self;
    };
}

- (void)setBtn_frame:(UIButton *(^)(CGRect))btn_frame{}
- (void)setBtn_title:(UIButton *(^)(NSString *, UIControlState))btn_title{}
- (void)setBtn_titleFont:(UIButton *(^)(UIFont *))btn_titleFont{};
- (void)setBtn_titleColor:(UIButton *(^)(UIColor *, UIControlState))btn_titleColor{}
- (void)setBtn_image:(UIButton *(^)(UIImage *, UIControlState))btn_image{}
- (void)setBtn_backgroundImage:(UIButton *(^)(UIImage *, UIControlState))btn_backgroundImage{}
- (void)setBtn_cornerRadius:(UIButton *(^)(CGFloat))btn_cornerRadius{}
- (void)setBtn_border:(UIButton *(^)(CGFloat, UIColor *))btn_border{}
- (void)setBtn_targetAction:(UIButton *(^)(id, SEL))btn_TargetAction{};
- (void)setBtn_supView:(UIButton *(^)(UIView *))btn_supView{};

+ (UIButton *)button_makeProperty:(void(^)(UIButton *make))block
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    block(button);
    return button;
}
@end
