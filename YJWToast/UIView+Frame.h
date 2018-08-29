//
//  UIView+Frame.h
//  ICA
//
//  Created by 杨京为 on 2018/8/22.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIScreen+Additions.h"
#import "UIWindow+Additions.h"

@interface UIView (Frame)

@property (nonatomic,assign) CGFloat top;
@property (nonatomic,assign) CGFloat left;
@property (nonatomic,assign) CGFloat right;
@property (nonatomic,assign) CGFloat bottom;
@property (nonatomic,assign) CGPoint center;
@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;
@property (nonatomic,assign) CGSize  size;
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;

- (instancetype)initWithSize:(CGSize)size;

@end
