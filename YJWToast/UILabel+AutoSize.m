//
//  UILabel+AutoSize.m
//  ICA
//
//  Created by 杨京为 on 2018/8/23.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import "UILabel+AutoSize.h"

@implementation UILabel (AutoSize)

+ (CGSize)autoSizeWithText:(NSString *)text font:(UIFont *)font{
    return [text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName,nil]];
}

- (CGSize)autoSize{
    return [self.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName,nil]];
}

@end
