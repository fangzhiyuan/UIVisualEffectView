//
//  ViewController.m
//  UIVisualEffectView
//
//  Created by 威盛电气 on 2017/9/14.
//  Copyright © 2017年 fzy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIScrollView *scrollow = [[UIScrollView alloc]initWithFrame:self.view.frame];
    
    scrollow.bounces = NO;
    
    scrollow.contentSize = CGSizeMake(1080, 1920);
    
    UIImageView *imageView =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1200, 1800)];
    
    imageView.image = [UIImage imageNamed:@"timg.jpg"];
    
    [scrollow addSubview:imageView];
    
    [self.view addSubview:scrollow];
    
    
    UIVisualEffectView *effectView =[[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    
    //这里一定要设置frame 不然不会显示效果
    
    effectView.frame = CGRectMake(0, 200, self.view.frame.size.width, 200);
    
    [self.view addSubview:effectView];
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:effectView.bounds];
    
    label.text = @"街拍";
    
    label.textAlignment = NSTextAlignmentCenter;
    
    label.font = [UIFont systemFontOfSize:80];
    
    label.textColor = [UIColor blackColor];
    
    [effectView.contentView addSubview:label];
    
    
    UIVisualEffectView *sub = [[UIVisualEffectView alloc]initWithEffect:[UIVibrancyEffect effectForBlurEffect:(UIBlurEffect *)effectView.effect]];
    
    // 这里注意一定要给子模糊一个frame 这样才会有效果
    
    sub.frame = effectView.bounds;
    
    // 这里添加子模糊 是添加到 contentView上
    
    [effectView.contentView addSubview:sub];
    
    [sub.contentView addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
