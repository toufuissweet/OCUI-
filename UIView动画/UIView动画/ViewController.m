//
//  ViewController.m
//  UIView动画
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
    //在屏幕添加一个色块
    view = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2-50, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //添加移动动画
    [UIView animateWithDuration:2 animations:^{
        view.center = CGPointMake(100, 199);
    } completion:^(BOOL finished) {
        //动画的嵌套
        //色彩的渐变动画
        [UIView animateWithDuration:2 animations:^{
            view.backgroundColor = [UIColor blueColor];
        } completion:^(BOOL finished) {
            //动画b改变view的大小
            [UIView animateWithDuration:2 animations:^{
                view.frame =CGRectMake(view.frame.origin.x, view.frame.origin.y, 50, 50);
            } completion:^(BOOL finished) {
                //透明动画
                [UIView animateWithDuration:2 animations:^{
                    view.alpha = 0.5;
                }];
            }];
        }];
    }];
    
}

@end
