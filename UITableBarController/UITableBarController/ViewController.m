//
//  ViewController.m
//  UITableBarController
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
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建一个tabBarControler
    UITabBarController * tabBar = [[UITabBarController alloc]init];
    //设置标签栏的颜色
    tabBar.tabBar.barTintColor = [UIColor greenColor];
    //设置标签栏的字体颜色
    tabBar.tabBar.tintColor = [UIColor blueColor];
    //创建一个可变的数组
    NSMutableArray * conArray = [[NSMutableArray alloc]init];
    for (int i=0; i<6; i++){
        UIViewController * con = [[UIViewController alloc]init];
        //随机生成backgroundColor
        con.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
        //设置tabBar标签上的名称
        con.tabBarItem.title = [NSString stringWithFormat:@"hello%d",i+1];
        //设置tabBar标签上的图片
        con.tabBarItem.image = [[UIImage imageNamed:@"灯泡.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //创建一个系统的tabBarItem
//        UITabBarItem * item = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:i];
//        con.tabBarItem=item;
        [conArray addObject:con];
    }
    //设置tabBar管理的viewController
    tabBar.viewControllers = conArray;
    [self presentViewController:tabBar animated:YES completion:nil];
}
@end
