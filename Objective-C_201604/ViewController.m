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

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 下载数据
    [self downloadData];
}

- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

// 用AFNetWorking实现get请求
- (void)downloadData
{
    // 1. 导入AFNetWorking库文件
    // 2. 导入头文件使用
    // 1) 创建"AFHTTPRequestOperationManager"类型的对象
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    
    // 2) 设置返回值的解析方式(二进制)
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    // 3) 发送请求
    /*
     第一个参数: 请求的url字符串
     第二个参数: 附加的参数(传nil)
     第三个参数: 请求成功返回时调用的代码块(block)
     第四个参数: 请求失败时调用的代码块
     */
    
    // 4) 注意的两点
    // 1. block代码块的执行是异步的
    // 2. block里面的变量通常会拷贝, 所以里面使用self指向的视图控制器对象时, 通常使用弱引用, 否则会有内存泄露
    
    [manager GET:requestURL1 parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // responseObject 存储了下载回来的数据
        // JSON解析
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
        // responseObject 存储了下载回来的数据
        // JSON解析
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
