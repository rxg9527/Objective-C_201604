//
//  main.m
//  04_static_inline
//
//  Created by Yuen on 16/4/16.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  如果你的.m文件需要频繁调用一个函数,可以用static inline来声明,这相当于把函数体当做一个大号的宏定义.不过这也不是百分之百有效,到底能不能把函数体转换为大号宏定义来用要看编译器心情,它要是觉得你的方法太复杂,他就不转了.他直接调用函数.
 */
static inline CGRect ScaleRect(CGRect rect, float n)
{
    return CGRectZero;
}

int main(int argc, const char *argv[])
{
    @autoreleasepool
    {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
