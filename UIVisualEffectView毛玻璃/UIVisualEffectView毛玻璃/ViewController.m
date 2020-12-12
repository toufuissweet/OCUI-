//
//  ViewController.m
//  UIVisualEffectView毛玻璃
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    //声明一个毛玻璃视觉管理类
    UIVisualEffectView * _effectView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建背景
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    imageView.image = [UIImage imageNamed:@"屏幕快照 2020-8-06 下午4.25.32.png"];
    [self.view addSubview:imageView];
    //设置slider条 进度条
    UISlider * slider = [[UISlider alloc]initWithFrame:CGRectMake(20, self.view.frame.size.height-50, 280, 30)];
    [slider addTarget:self action:@selector(slider:) forControlEvents:UIControlEventValueChanged];
    slider.minimumValue = 0;
    slider.maximumValue = 100;
    [self.view addSubview:slider];
    
    //进行毛玻璃对象的初始化
    _effectView = [[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
    _effectView.alpha = 0;
    _effectView.frame = imageView.frame;
    [imageView addSubview:_effectView];
}

-(void)slider:(UISlider *)slider{
    float value = slider.value;
    float tip = value/100;
    _effectView.alpha = tip;
}

@end
