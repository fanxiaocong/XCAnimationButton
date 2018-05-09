//
//  ViewController.m
//  XCAnimationButtonExample
//
//  Created by 樊小聪 on 2017/3/8.
//  Copyright © 2017年 樊小聪. All rights reserved.
//

#import "ViewController.h"

#import "XCAnimationButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet XCAnimationButton *smailButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置 UI
    [self setupUI];
}

- (void)setupUI
{
    NSArray *images = @[@"heart", @"like", @"smile", @"star"];
    
    CGFloat buttonWH = 60;
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    
    for (NSInteger i = 0; i < images.count; i ++)
    {
        CGFloat buttonX = screenW * 0.5 * (i % 2) + (screenW * 0.5 - buttonWH) * 0.5 ;
        CGFloat buttonY = 200 + (buttonWH + 100) * (i / 2);
        
        XCAnimationButton *button = [[XCAnimationButton alloc] initWithFrame:CGRectMake(buttonX, buttonY, buttonWH, buttonWH)];
        /// 背景图片
        button.image = [UIImage imageNamed:images[i]];
        /// 最终填充的按钮的颜色
        button.favoredColor = [UIColor redColor];
        /// 默认的背景颜色
        button.defaultColor = [UIColor lightGrayColor];
        /// 渐变环的颜色
        button.circleColor  = [UIColor orangeColor];
        /// 线的颜色
        button.lineColor    = [UIColor blueColor];
        /// 状态改变一次的时间
        button.duration     = 1.f;

        [button addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:button];
    }
    
    [self.smailButton addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - 🎬 👀 Action Method 👀

- (void)didClickButton:(XCAnimationButton *)button
{
    /*⏰ ----- 此处刻要刻改变按钮的选中状态: 如果不改变选中状态, 是没有动画效果的 !!! ----- ⏰*/
    button.selected = !button.isSelected;
}

@end


