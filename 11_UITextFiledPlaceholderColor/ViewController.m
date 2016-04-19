//
//  ViewController.m
//  11_UITextFiledPlaceholderColor
//
//  Created by Yuen on 16/4/19.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *testTextField;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.testTextField setValue:[UIColor blueColor] forKeyPath:@"_placeholderLabel.textColor"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
