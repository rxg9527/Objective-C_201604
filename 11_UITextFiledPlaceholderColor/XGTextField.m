//
//  XGTextField.m
//  Objective-C_201604
//
//  Created by Yuen on 16/4/19.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "XGTextField.h"


@implementation XGTextField

- (void)drawPlaceholderInRect:(CGRect)rect
{
    [self.placeholder drawInRect:rect withAttributes:@{NSForegroundColorAttributeName : [UIColor redColor]}];
}

@end
