//
//  UIView+Frame.m
//  ICA
//
//  Created by 杨京为 on 2018/8/22.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (CGFloat)top{
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top{
    self.frame = CGRectMake(self.frame.origin.x, top, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)left{
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left{
    
    self.frame = CGRectMake(left, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)bottom{
    return CGRectGetMaxY(self.frame);
}

- (void)setBottom:(CGFloat)bottom{
    self.frame = CGRectMake(self.frame.origin.x, bottom - CGRectGetHeight(self.frame), self.frame.size.width, self.frame.size.height);
}

- (CGFloat)right{
    return CGRectGetMaxX(self.frame);
}

- (void)setRight:(CGFloat)right{
    self.frame = CGRectMake(right - CGRectGetMaxX(self.frame), self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGPoint)center{
    return CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
}

- (void)setCenter:(CGPoint)center{
    self.frame = CGRectMake(center.x - CGRectGetWidth(self.frame) / 2.0, center.y - CGRectGetHeight(self.frame) / 2.0, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)centerX{
    return CGRectGetMidX(self.frame);
}

- (void)setCenterX:(CGFloat)centerX{
    self.frame = CGRectMake(centerX - CGRectGetWidth(self.frame) / 2.0, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)centerY{
    return CGRectGetMidY(self.frame);
}

- (void)setCenterY:(CGFloat)centerY{
    self.frame = CGRectMake(self.frame.origin.x, centerY - CGRectGetHeight(self.frame) / 2.0, self.frame.size.width, self.frame.size.height);
}

- (CGSize)size{
    return self.frame.size;
}

- (void)setSize:(CGSize)size{
    self.frame = CGRectMake(self.left, self.top, size.width, size.height);
}

- (CGFloat)width{
    return self.size.width;
}

- (void)setWidth:(CGFloat)width{
    self.frame = CGRectMake(self.left, self.top, width, self.height);
}

- (CGFloat)height{
    return self.size.height;
}
- (void)setHeight:(CGFloat)height{
    
    self.frame = CGRectMake(self.left, self.top, self.width, height);
}

- (instancetype)initWithSize:(CGSize)size{
    
    return [self initWithFrame:CGRectMake(0.0, 0.0,size.width,size.height)];
}

@end
