//
//  UIImage+RoundedCorner.m
//  Objective-C_201604
//
//  Created by Yuen on 16/4/20.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "UIImage+RoundedCorner.h"


@implementation UIImage (RoundedCorner)

- (UIImage *)xg_imageWithRoundedCornersAndSize:(CGSize)sizeToFit andCornerRadius:(CGFloat)radius
{
    CGRect rect = (CGRect){0.f, 0.f, sizeToFit};

    UIGraphicsBeginImageContextWithOptions(sizeToFit, NO, UIScreen.mainScreen.scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(),
                     [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());

    [self drawInRect:rect];
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return output;
}


@end
