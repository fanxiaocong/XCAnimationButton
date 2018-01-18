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
    CGFloat buttonY  = 200;
    
    for (NSInteger i = 0; i < images.count; i ++)
    {
        CGFloat buttonX = i * buttonWH;
        
        XCAnimationButton *button = [[XCAnimationButton alloc] initWithFrame:CGRectMake(buttonX, buttonY, buttonWH, buttonWH)];
        button.image = [UIImage imageNamed:images[i]];

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


