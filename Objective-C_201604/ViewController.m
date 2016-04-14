//
//  ViewController.m
//  Objective-C_201604
//
//  Created by Yuen on 16/4/15.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#define WEAK_SELF __weak typeof(self)weakSelf = self
#define STRONG_SELF __strong typeof(weakSelf)self = weakSelf

#define requestURL1 @"http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=1"
#define requestURL2 @"http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=2"

#import "ViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "MJExtension.h"
#import "XGBaseClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self downloadData];
}

// 用AFNetWorking实现get请求
- (void)downloadData
{
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:requestURL1 parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        id result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        if ([result isKindOfClass:[NSDictionary class]]) {
            NSDictionary *dict = result;
            XGBaseClass *model = [XGBaseClass modelObjectWithDictionary:dict];
            NSLog(@"%@", [model dictionaryRepresentation]);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@", error);
    }];
    
    [manager GET:requestURL2 parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        id result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        if ([result isKindOfClass:[NSDictionary class]]) {
            NSDictionary *dict = result;
            XGBaseClass *model = [XGBaseClass modelObjectWithDictionary:dict];
            NSLog(@"%@", [model dictionaryRepresentation]);
        }
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        NSLog(@"error:%@", error);
    }];
}

@end
