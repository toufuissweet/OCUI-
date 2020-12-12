//
//  ViewController2.m
//  UIViewController
//
//  Created by 小天才 on 2020/8/14.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2
//初始化
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"1: init");
    }
    return self;
}
//加载视图
- (void)loadView{
    [super loadView];
    NSLog(@"2: loadView");
}

//视图加载完
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"3 viewDidLoad");
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:btn];
}
//视图将要展示
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    NSLog(@"4: viewWillAppear");
}
//界面的将要布局
-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"5 viewWillLayoutSubviews");
}
//界面布局结束后
-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"6: viewDidLayoutSubviews");
}
//视图已经展示
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    NSLog(@"7: viewDidAppear");
}
//视图将要消失
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:YES];
    NSLog(@"8: viewWillDisappear");
}
//视图已经消失
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:YES];
    NSLog(@"9: viewDidDisappear");
}
//完全终止 内存释放
- (void)dealloc
{
    NSLog(@"10: dealoc");
}


-(void)click{
    //该controler被释放
    [self dismissViewControllerAnimated:YES completion:nil];
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
