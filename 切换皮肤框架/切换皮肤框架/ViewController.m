//
//  ViewController.m
//  切换皮肤框架
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
@interface ViewController (){
    UILabel * label;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"hello";
    [self.view addSubview:label];
}

-(void)creatTopicView{
    TopicModel * model = [TopicColorManager sharedManager].topicModel;
    self.view.backgroundColor = model.backgroundColor;
    label.backgroundColor = model.labelColor;
    label.textColor = model.textColor;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self presentViewController:[[ViewController2 alloc]init] animated:YES completion:nil];
}
@end
