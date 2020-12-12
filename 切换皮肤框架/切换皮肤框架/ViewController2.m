//
//  ViewController2.m
//  切换皮肤框架
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//
#import "ViewController2.h"

@interface ViewController2 (){
    UIButton * btn;
}

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(changeTopic) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"切换模式" forState:UIControlStateNormal];
}

-(void)creatTopicView{
    TopicModel * model =  [TopicColorManager sharedManager].topicModel;
    self.view.backgroundColor = model.backgroundColor;
    btn.backgroundColor = model.labelColor;
    [btn setTitleColor:model.textColor forState:UIControlStateNormal];
    
}

-(void)changeTopic{
    TopicColorModel model = [TopicColorManager sharedManager].topicColorModel;
    if (model==day) {
        [TopicColorManager changeTopicModel:night];
    }else{
        [TopicColorManager changeTopicModel:day];
    }
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //返回上一个controler
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
