//
//  ViewController.m
//  UIImageView的帧动画
//
//  Created by 小天才 on 2020/8/15.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView * animationView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 40, 120)];
    animationView.image = [UIImage imageNamed:@"A_01.png"];
    [self.view addSubview:animationView];
    //创建一个可变的数组
    NSMutableArray * imageArray = [[NSMutableArray alloc]init];
    //将所有帧图片放入数组中
    for (int i=0; i<6; i++) {
        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"A_0%d.png",i+1]];
        [imageArray addObject:image];
        
    }
    //设置imageView的动画数组
    animationView.animationImages = imageArray;
    //设置动画的播放时间
    animationView.animationDuration = 1;
    //播放次数 0代表无限
    animationView.animationRepeatCount = 0;
    
    //开始播放动画
    [animationView startAnimating];
    [UIView animateWithDuration:4 animations:^{
        animationView.frame = CGRectMake(400, 100, 40, 120);
    }];
}


@end
