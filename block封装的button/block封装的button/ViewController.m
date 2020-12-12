//
//  ViewController.m
//  block封装的button
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"
@interface ViewController (){
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    MyButton * myBtn = [[MyButton alloc]initWithFrame:CGRectMake(100, 220, 100, 100)];
    myBtn.backgroundColor = [UIColor greenColor];
    [myBtn addAction:^{
        NSLog(@"myButton被点击了");
    }];
    [self.view addSubview:myBtn];
}

-(void)click:(id)btn{
    NSLog(@"被点击了");
}

@end
