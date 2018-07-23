//
//  UIButton+Chain.h
//  HLChain
//
//  Created by HLin on 2017/12/26.
//  Copyright © 2017年 HLChain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Chain)

@property(nonatomic, copy) UIButton *(^btn_frame)(CGRect frame);
@property(nonatomic, copy) UIButton *(^btn_title)(NSString *title, UIControlState state);
@property(nonatomic, copy) UIButton *(^btn_titleFont)(UIFont *titleFont);
@property(nonatomic, copy) UIButton *(^btn_titleColor)(UIColor *color, UIControlState state);
@property(nonatomic, copy) UIButton *(^btn_image)(UIImage *image, UIControlState state);
@property(nonatomic, copy) UIButton *(^btn_backgroundImage)(UIImage *image, UIControlState state);
@property(nonatomic, copy) UIButton *(^btn_cornerRadius)(CGFloat cornerRadius);
@property(nonatomic, copy) UIButton *(^btn_border)(CGFloat borderWidth, UIColor *borderColor);
@property(nonatomic, copy) UIButton *(^btn_targetAction)(id target, SEL acton);
@property(nonatomic, copy) UIButton *(^btn_supView)(UIView *supView);


+ (UIButton *)button_makeProperty:(void(^)(UIButton *make))block;

@end
