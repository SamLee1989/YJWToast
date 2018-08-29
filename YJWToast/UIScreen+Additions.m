//
//  UIScreen+Additions.m
//  ICA
//
//  Created by 杨京为 on 2018/8/23.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import "UIScreen+Additions.h"

@implementation UIScreen (Additions)

+ (CGSize)size{
    
    return [UIScreen mainScreen].bounds.size;
}

+ (CGPoint)center{
    
    return CGPointMake([UIScreen width] / 2.0, [UIScreen height] / 2.0);
}

+ (CGFloat)width{
    
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)height{
    
    return [UIScreen mainScreen].bounds.size.height;
}

@end
