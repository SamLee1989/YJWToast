//
//  UIWindow+Additions.m
//  ICA
//
//  Created by 杨京为 on 2018/8/24.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import "UIWindow+Additions.h"

@implementation UIWindow (Additions)

+ (UIWindow *)keyWindow{
    id delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = [delegate valueForKey:@"window"];
    return window;
}

@end
