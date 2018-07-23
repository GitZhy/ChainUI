//
//  UIView+Chain.h
//  HLChain
//
//  Created by HLin on 2017/12/26.
//  Copyright © 2017年 HLChain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Chain)

@property(nonatomic, copy) UIView *(^view_frame)(CGRect frame);
@property(nonatomic, copy) UIView *(^view_backgroundColor)(UIColor *color);
@property(nonatomic, copy) UIView *(^view_cornerRadius)(CGFloat cornerRadius);
@property(nonatomic, copy) UIView *(^view_supView)(UIView *supView);

+ (UIView *)view_makeProperty:(void(^)(UIView *make))block;

@end
