//
//  TopicRootViewController.m
//  切换皮肤框架
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "TopicRootViewController.h"
@interface TopicRootViewController ()

@end

@implementation TopicRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.    
    //监听切换皮肤的通知
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(change) name:@"TopicMessage" object:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    [self creatTopicView];
}

-(void)change{
    [self creatTopicView];
}
//专门设计UI的工作
-(void)creatTopicView{
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
