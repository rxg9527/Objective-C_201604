//
//  ViewController.m
//  09_GIF_ FLAnimatedImage
//
//  Created by Yuen on 16/4/17.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "ViewController.h"
#import "FLAnimatedImage.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *huskyImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noCodeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *samoyedImageView;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FLAnimatedImage *huskyImage = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"劳资再也不写代码了.gif" ofType:nil]]];
    FLAnimatedImageView *huskyImageView = [FLAnimatedImageView new];
    huskyImageView.animatedImage = huskyImage;
    huskyImageView.frame = CGRectMake(0.0, 0.0, 145, 135);
    [self.view addSubview:huskyImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
