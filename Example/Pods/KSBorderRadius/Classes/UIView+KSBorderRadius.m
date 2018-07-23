//
//  UIView+KSBorderRadius.m
//  KSBorderRadius
//
//  Created by aDu on 2018/7/13.
//  Copyright © 2018年 aDu. All rights reserved.
//

#import "UIView+KSBorderRadius.h"

@implementation UIView (KSBorderRadius)

- (void)setBorderWithColor:(UIColor *)borderColor
               borderWidth:(CGFloat)borderWidth
              cornerRadius:(CGFloat)cornerRadius {
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    
    CAShapeLayer *borderLayer = [CAShapeLayer layer];
    borderLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    borderLayer.lineWidth = borderWidth;
    borderLayer.strokeColor = borderColor.CGColor;
    borderLayer.fillColor = [UIColor clearColor].CGColor;
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) cornerRadius:cornerRadius];
    maskLayer.path = bezierPath.CGPath;
    borderLayer.path = bezierPath.CGPath;
    
    [self.layer insertSublayer:borderLayer atIndex:0];
    [self.layer setMask:maskLayer];
}

@end
