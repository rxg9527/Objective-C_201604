//
//  Test.h
//  Objective-C_201604
//
//  Created by Yuen on 16/4/16.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  使用NSString *在检测字符串的值是否相等的时候更快.对于第一种你可以直接使用(stringInstance == MyFirstConstant)来比较,而define则使用的是这种.([stringInstance isEqualToString:MyFirstConstant])
 */
FOUNDATION_EXPORT NSString *const testConstantString;


@interface Test : NSObject

@end
