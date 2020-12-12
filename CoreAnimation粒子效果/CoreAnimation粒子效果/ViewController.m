//
//  ViewController.m
//  CoreAnimation粒子效果
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
    //创建一个粒子发射器
    CAEmitterLayer * emitter = [CAEmitterLayer layer];
    //设置每秒产生粒子的速度
    emitter.birthRate = 100;
    //粒子的生命周期 2秒
    emitter.lifetime = 2;
    //设置粒子发射器的位置
    emitter.emitterPosition = CGPointMake(100, 100);
    //设置发射器的形状
    emitter.emitterShape = kCAEmitterLayerPoint;
    //设置粒子的渲染模式(粒子叠加的属性）
    emitter.renderMode = kCAEmitterLayerAdditive;
    //粒子的发射速度
    emitter.velocity = 100;
    
    //设置粒子单元
    CAEmitterCell * cell = [CAEmitterCell emitterCell];
    //设置粒子的随机范围
    cell.velocityRange = 50;
    //设置粒子的颜色
    cell.color = [UIColor redColor].CGColor;
    //粒子的产生速度
    cell.birthRate = 5;
    //粒子的生命周期
    cell.lifetime = 2;
    //颜色的变化范围
    cell.redRange = 255/255.0;
    cell.blueRange = 255/255.0;
    cell.greenRange = 255/255.0;
    //粒子的旋转属性
    cell.spinRange = M_PI*2;
    //粒子的内容
    cell.contents =(id)[[UIImage imageNamed:@"lizi.png"] CGImage];
    emitter.emitterCells = @[cell];
    [self.view.layer addSublayer:emitter];
    
    
    
    
}


@end
