//
//  Test.m
//  Objective-C_201604
//
//  Created by Yuen on 16/4/16.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "Test.h"

/**
 *  常量不是全局的，需在前面加static。否则可能会产生duplicate symbol的错误。
 */
static NSString *const kTestConstantString = @".m_Yuen";
NSString *const testConstantString = @".h_Yuen";


@implementation Test

@end
