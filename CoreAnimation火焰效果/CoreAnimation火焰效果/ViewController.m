//
//  ViewController.m
//  CoreAnimation火焰效果
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
    self.view.backgroundColor = [UIColor blackColor];
    // Do any additional setup after loading the view, typically from a nib.
    //创建粒子发射器
    CAEmitterLayer * emitterLayer = [CAEmitterLayer layer];
    //设置发射器尺寸
    emitterLayer.emitterSize = CGSizeMake(self.view.frame.size.width-100, 20);
    //设置瞄点(取值范围0-1）0.5z在中间
    emitterLayer.anchorPoint = CGPointMake(0.5, 0.5);
    //设置发射器的位置
    emitterLayer.position = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height-20);
    //设置发射模式(以线形式）
    emitterLayer.emitterMode = kCAEmitterLayerOutline;
    emitterLayer.renderMode = kCAEmitterLayerAdditive;//叠加状态
    
    //创建火焰粒子单元
    CAEmitterCell * fire = [CAEmitterCell emitterCell];
    //粒子生成速度
    fire.birthRate = 800;
    //粒子的存活时间
    fire.lifetime = 2;
    //粒子的发射速度 每秒200像素
    fire.velocity = 100;
    //发射速度范围
    fire.velocityRange =50;
    //存活时间的随机范围
    fire.lifetimeRange = 1.5;
    //粒子的弹射方向 偏移量
    fire.emissionLongitude = M_PI +M_PI/2;
    fire.emissionRange = M_PI/4;
    //设置粒子
    fire.contents = (id)[[UIImage imageNamed:@"屏幕快照 2020-8-02 下午8.16.34.png"]CGImage];
    fire.color = [UIColor colorWithRed:0.8 green:0.4 blue:0.2 alpha:1].CGColor;
    
    //创建烟雾粒子单元
    CAEmitterCell * smoke = [CAEmitterCell emitterCell];
    //粒子生成速度
    smoke.birthRate = 1200;
    //粒子的存活时间
    smoke.lifetime = 4;
    //粒子的发射速度 每秒200像素
    smoke.velocity = 200;
    //发射速度范围
    smoke.velocityRange =50;
    //存活时间的随机范围
    smoke.lifetimeRange = 1.5;
    //粒子的弹射方向 偏移量
    smoke.emissionLongitude = M_PI +M_PI/2;
    smoke.emissionRange = M_PI/2;
    //设置粒子
    smoke.contents = (id)[[UIImage imageNamed:@"屏幕快照 2020-8-02 下午8.16.34.png"]CGImage];
    smoke.color = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.3].CGColor;
    
    
    emitterLayer.emitterCells = @[fire,smoke];
    [self.view.layer addSublayer:emitterLayer];
    
}


@end
