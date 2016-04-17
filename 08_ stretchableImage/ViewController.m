//
//  ViewController.m
//  08_ stretchableImage
//
//  Created by Yuen on 16/4/17.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *defaultImageView;
@property (weak, nonatomic) IBOutlet UIImageView *stretchableImageView;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIImage *exampleImage = [UIImage imageWithData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"加入购物车" ofType:@"png"]]];

    self.defaultImageView.image = exampleImage;
    /**
     *  方法已经被废弃
     *  - (UIImage *)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight __TVOS_PROHIBITED;
     *  use resizableImageWithCapInsets: and capInsets.
     */
    self.stretchableImageView.image = [exampleImage stretchableImageWithLeftCapWidth:100 topCapHeight:100];
    self.stretchableImageView.image = [exampleImage resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeTile];
    self.stretchableImageView.image = [exampleImage resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
