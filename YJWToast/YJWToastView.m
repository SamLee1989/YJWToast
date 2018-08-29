//
//  YJWToast.m
//  ICA
//
//  Created by 杨京为 on 2018/8/23.
//  Copyright © 2018年 YangJingwei. All rights reserved.
//

#import "YJWToast.h"
#import "UILabel+AutoSize.h"
#import "UIView+Frame.h"


@interface YJWToast (){
    
}

@property (nonatomic,strong) UILabel *toastLabel;

@end

@implementation YJWToast

//+ (instancetype)toastWithText:(NSString *)text{
//
//    return [[YJWToast alloc] init];
//}

- (instancetype)initWithText:(NSString *)text{
    
    if(self = [super init])
    {
        [self setupLabel:text];
    }
    
    return self;
}

- (void)show{
    
    switch (self.layout) {
        case YJWToastLayoutTop:{
            _toastLabel.top = [UIScreen height] / 5.0;
            _toastLabel.centerX = [UIScreen center].x;
            break;
        }
        case YJWToastLayoutCenter:{
            _toastLabel.center = [UIScreen center];
            break;
        }
        case YJWToastLayoutBottom:{
            _toastLabel.bottom = [UIScreen height] / 5.0 * 4.0;
            _toastLabel.centerX = [UIScreen center].x;
            break;
        }
            
        default:
            break;
    }
    
    _toastLabel.alpha = 0.0;
    UIWindow *window = [UIWindow keyWindow];
    [window addSubview:_toastLabel];
    [UIView animateWithDuration:0.3 animations:^{
        self.toastLabel.alpha = 1.0;
    }];
    
    [self performSelector:@selector(hide) withObject:nil afterDelay:self.duration];
}

- (void)hide{
    
    [UIView animateWithDuration:0.3 animations:^{
        self.toastLabel.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self.toastLabel removeFromSuperview];
    }];
}

- (void)setupLabel:(NSString *)text{
    
    CGSize size = [self sizeForLabel:text];
    _toastLabel = [[UILabel alloc] initWithSize:size];
    _toastLabel.font = self.font;
    _toastLabel.backgroundColor = self.tintColor;
    _toastLabel.textColor = self.textColor;
    _toastLabel.textAlignment = NSTextAlignmentCenter;
    _toastLabel.numberOfLines = [self numberOfLinesForLabel:text];
    _toastLabel.text = text;
    _toastLabel.layer.cornerRadius = 5.0;
    _toastLabel.layer.masksToBounds = YES;
}

- (NSUInteger)numberOfLinesForLabel:(NSString *)text{
    
    CGSize size = [UILabel autoSizeWithText:text font:self.font];
    CGFloat width = [UIScreen width] - 40.0;//保持距离屏幕边缘>20
    if(size.width > width)
    {
        CGFloat count = size.width / width;
        NSInteger countI = count;
        if(count - countI > 0.0)
        {
            countI ++;
        }
        return countI;
    }
    else
    {
        return 1;
    }
}

- (CGSize)sizeForLabel:(NSString *)text{
    
    CGSize size = [UILabel autoSizeWithText:text font:self.font];
    CGFloat height = size.height;
    NSUInteger count = [self numberOfLinesForLabel:text];
    height = height * count + 10.0;//上下边距留5
    CGFloat width = count > 1 ? [UIScreen width] - 40.0 : size.width;//保持距离屏幕边缘>=20
    
    return CGSizeMake(width + 10.0, height);//文字左右边距留5
}


@synthesize font = _font,tintColor = _tintColor,textColor = _textColor,duration = _duration,layout = _layout;
- (void)setFont:(UIFont *)font{
    _font = font;
    _toastLabel.font = self.font;
}

- (UIFont *)font{
    return _font ? _font : [UIFont systemFontOfSize:13.0];
}

- (void)setTintColor:(UIColor *)tintColor{
    _tintColor = tintColor;
    _toastLabel.backgroundColor = self.tintColor;
}

- (UIColor *)tintColor{
    return _tintColor ? _tintColor : [UIColor blackColor];
}

- (void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    _toastLabel.textColor = self.textColor;
}

- (UIColor *)textColor{
    return _textColor ? _textColor : [UIColor whiteColor];
}

- (void)setDuration:(NSTimeInterval)duration{
    _duration = duration;
}

- (NSTimeInterval)duration{
    return _duration > 0 ? _duration : 3;//default is 3
}

- (void)setLayout:(YJWToastLayout)layout{
    _layout = layout;
}

- (YJWToastLayout)layout{
    return _layout;
}

//- (void)setText:(NSString *)text{
//    _text = text;
//    _toastLabel.text = _text;
//}
//
//- (NSString *)text{
//    return _text;
//}

@end
