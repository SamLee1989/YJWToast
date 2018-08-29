//
//  UILabel+AutoSize.h
//  ICA
//
//  Created by 杨京为 on 2018/8/23.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (AutoSize)

+ (CGSize)autoSizeWithText:(NSString *)text font:(UIFont *)font;
- (CGSize)autoSize;


@end
