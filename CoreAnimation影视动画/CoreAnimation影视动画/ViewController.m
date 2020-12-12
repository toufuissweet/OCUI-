//
//  ViewController.m
//  CoreAnimation影视动画
//
//  Created by 小天才 on 2020/8/15.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIView * view;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    //切割子视图
    view.layer.masksToBounds = YES;

    [self.view addSubview:view];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //获取视图的layer对象
    CALayer * layer = view.layer;
    //创建基础属性的动画
//    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    //设置动画播放时间
    ani.duration = 1.5;
    //设置动画的循环次数
    ani.repeatCount = 1;
    //添加动画
    [layer addAnimation:ani forKey:@"ani"];
//    layer.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1].CGColor;
    layer.cornerRadius = arc4random()%100;
}

@end
