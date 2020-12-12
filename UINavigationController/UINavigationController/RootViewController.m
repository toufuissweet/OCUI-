//
//  RootViewController.m
//  UINavigationController
//
//  Created by 小天才 on 2020/8/14.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "RootViewController.h"
#import "TwoViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置标题
    self.view.backgroundColor = [UIColor greenColor];
    self.title = @"Root";
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TwoViewController * con = [[TwoViewController alloc]init];
    //压入
    [self.navigationController pushViewController:con animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
