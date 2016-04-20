//
//  UIImage+RoundedCorner.h
//  Objective-C_201604
//
//  Created by Yuen on 16/4/20.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImage (RoundedCorner)

/**
 *  圆角使用UIImageView来处理。
 简单来说，底层铺一个UIImageView,然后用GraphicsContext生成一张带圆角的图。
 */
- (UIImage *)xg_imageWithRoundedCornersAndSize:(CGSize)sizeToFit andCornerRadius:(CGFloat)radius;

@end
