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

@property (nonatomic, strong) NSError *requestURL1error;
@property (nonatomic, strong) NSError *requestURL2error;
@property (nonatomic, strong) NSMutableArray *successResults;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self downloadData];
}

- (NSMutableArray *)successResults {
    if (!_successResults) {
        _successResults = @[].mutableCopy;
    }
    return _successResults;
}

// 用AFNetWorking实现get请求
- (void)downloadData
{
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    dispatch_group_t serviceGroup = dispatch_group_create();
    
    // Start the first service
    dispatch_group_enter(serviceGroup);
    [manager GET:requestURL1 parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        id result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        if ([result isKindOfClass:[NSDictionary class]]) {
            NSDictionary *dict = result;
            XGBaseClass *model = [XGBaseClass modelObjectWithDictionary:dict];
            NSLog(@"%@", [model dictionaryRepresentation]);
        }
        [self.successResults addObject:@(1)];
        dispatch_group_leave(serviceGroup);

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        self.requestURL1error = error;
        dispatch_group_leave(serviceGroup);
    }];
    
    // Start the second service
    dispatch_group_enter(serviceGroup);
    [manager GET:requestURL2 parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        id result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        if ([result isKindOfClass:[NSDictionary class]]) {
            NSDictionary *dict = result;
            XGBaseClass *model = [XGBaseClass modelObjectWithDictionary:dict];
            NSLog(@"%@", [model dictionaryRepresentation]);
        }
        [self.successResults addObject:@(1)];
        dispatch_group_leave(serviceGroup);
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        self.requestURL2error = error;
        dispatch_group_leave(serviceGroup);
    }];
    
    dispatch_group_notify(serviceGroup, dispatch_get_main_queue(), ^{
        // Assess any errors
        NSError *overallError = nil;
        if (self.requestURL1error || self.requestURL2error)
        {
            // Either make a new error or assign one of them to the overall error
            overallError = self.requestURL1error ?: self.requestURL2error;
        }
        // Now call the final completion block
        NSLog(@"%@", overallError);
        NSLog(@"请求成功数：%zd", self.successResults.count);
    });
}

@end
