//
//  UIView+KSBorderRadius.h
//  KSBorderRadius
//
//  Created by aDu on 2018/7/13.
//  Copyright © 2018年 aDu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (KSBorderRadius)

/**
 设置圆角、边框、边框颜色
 @param borderColor 边框颜色
 @param borderWidth 边框大小
 @param cornerRadius 圆角大小
 */
- (void)setBorderWithColor:(UIColor *)borderColor
               borderWidth:(CGFloat)borderWidth
              cornerRadius:(CGFloat)cornerRadius;

@end
