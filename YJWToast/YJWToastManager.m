//
//  YJWToastManager.m
//  ICA
//
//  Created by 杨京为 on 2018/8/24.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import "YJWToastManager.h"

static YJWToast *_toast;

@implementation YJWToastManager

+ (void)makeText:(NSString *)text onWhere:(YJWToastLayout)where duration:(NSTimeInterval)duration{
    
    if(_toast)
    {
        [_toast hide];
    }
    _toast = [[YJWToast alloc] initWithText:text];
    _toast.layout = where;
    _toast.duration = duration;
    [_toast show];
}

+ (void)makeText:(NSString *)text tintColor:(UIColor *)tintColor textColor:(UIColor *)textColor{
    
    if(_toast)
    {
        [_toast hide];
    }
    _toast = [[YJWToast alloc] initWithText:text];
    _toast.tintColor = tintColor;
    _toast.textColor = textColor;
    [_toast show];
}

@end
