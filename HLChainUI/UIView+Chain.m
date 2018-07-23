//
//  UIView+Chain.m
//  HLChain
//
//  Created by HLin on 2017/12/26.
//  Copyright © 2017年 HLChain. All rights reserved.
//

#import "UIView+Chain.h"

@implementation UIView (Chain)

#pragma mark - 链式UIView
- (UIView *(^)(CGRect))view_frame
{
    return ^(CGRect frame){
        [self setFrame:frame];
        return self;
    };
}

- (UIView *(^)(UIColor *))view_backgroundColor
{
    return ^(UIColor *color){
        [self setBackgroundColor:color];
        return self;
    };
}

- (UIView *(^)(CGFloat))view_cornerRadius
{
    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        return self;
    };
}

- (UIView *(^)(UIView *))view_supView
{
    return ^(UIView *view){
        [view addSubview:self];
        return self;
    };
}


- (void)setView_frame:(UIView *(^)(CGRect))view_frame{};
- (void)setView_backgroundColor:(UIView *(^)(UIColor *))view_backgroundColor{};
- (void)setView_cornerRadius:(UIView *(^)(CGFloat))view_cornerRadius{};
- (void)setView_supView:(UIView *(^)(UIView *))view_supView{};

+ (UIView *)view_makeProperty:(void(^)(UIView *make))block
{
    UIView *view = [[UIView alloc] init];
    block(view);
    return view;
}

@end
