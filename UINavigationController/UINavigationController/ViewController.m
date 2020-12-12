//
//  ViewController.m
//  UINavigationController
//
//  Created by 小天才 on 2020/8/14.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:[[RootViewController alloc]init]];
    //设置导航栏是否半透明
    nav.navigationBar.translucent = NO;
    //设置导航栏的颜色
    nav.navigationBar.barTintColor = [UIColor blueColor];
    //设置标题字体的颜色
    nav.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor purpleColor]};
    //设置导航返回按钮的颜色
    nav.navigationBar.tintColor = [UIColor whiteColor];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
