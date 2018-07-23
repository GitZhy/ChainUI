//
//  UILabel+Chain.h
//  HLChain
//
//  Created by HLin on 2017/12/26.
//  Copyright © 2017年 HLChain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Chain)

@property(nonatomic, copy) UILabel *(^lab_frame)(CGRect frame);
@property(nonatomic, copy) UILabel *(^lab_text)(NSString *text);
@property(nonatomic, copy) UILabel *(^lab_font)(UIFont *font);
@property(nonatomic, copy) UILabel *(^lab_textColor)(UIColor *textColor);
@property(nonatomic, copy) UILabel *(^lab_backgroundColor)(UIColor *backgroundColor);
@property(nonatomic, copy) UILabel *(^lab_textAlignment)(NSTextAlignment textAlignment);
@property(nonatomic, copy) UILabel *(^lab_supView)(UIView *supView);

+ (UILabel *)label_makeProperty:(void(^)(UILabel *make))block;

@end
