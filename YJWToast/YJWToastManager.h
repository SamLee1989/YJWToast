//
//  YJWToastManager.h
//  ICA
//
//  Created by 杨京为 on 2018/8/24.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YJWToast.h"

//! Project version number for YJWToastManager.
FOUNDATION_EXPORT double YJWToastManagerVersionNumber;

//! Project version string for YJWToastManager.
FOUNDATION_EXPORT const unsigned char YJWToastManagerVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <YJWToastManager/PublicHeader.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJWToastManager : NSObject

+ (void)makeText:(NSString *)text onWhere:(YJWToastLayout)where duration:(NSTimeInterval)duration;
+ (void)makeText:(NSString *)text tintColor:(UIColor *)tintColor textColor:(UIColor *)textColor;

@end

NS_ASSUME_NONNULL_END
