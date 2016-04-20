//
//  ViewController.m
//  13_OffscreenRendering_CornerRadius
//
//  Created by Yuen on 16/4/20.
//  Copyright © 2016年 Yuen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    /**
     *  
     OpenGL中，GPU屏幕渲染有以下两种方式： On-Screen Rendering 意为当前屏幕渲染，指的是GPU的渲染操作是在当前用于显示的屏幕缓冲区中进行。 Off-Screen Rendering 意为离屏渲染，指的是GPU在当前屏幕缓冲区以外新开辟一个缓冲区进行渲染操作。
     
     相比于当前屏幕渲染，离屏渲染的代价是很高的，主要体现在两个方面： 创建新缓冲区 要想进行离屏渲染，首先要创建一个新的缓冲区。 上下文切换 离屏渲染的整个过程，需要多次切换上下文环境：先是从当前屏幕（On-Screen）切换到离屏（Off-Screen）；等到离屏渲染结束以后，将离屏缓冲区的渲染结果显示到屏幕上有需要将上下文环境从离屏切换到当前屏幕。而上下文环境的切换是要付出很大代价的。 哪些行为会导致Offscreen rendering?
     
     custom drawRect: (any, even if you simply fill the background with color)
     CALayer cornerRadius
     CALayer shadow
     CALayer mask
     any custom drawing using CGContext
     */
    self.label.layer.cornerRadius = 5;
    self.label.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
