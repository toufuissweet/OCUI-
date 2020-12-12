//
//  ViewController.m
//  不需要delegate的tableViewControler
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"
#import "MyTableView.h"
#import "MyModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyTableView * tableView = [[MyTableView alloc]init];
    tableView.frame = CGRectMake(0, 0, 320, 480);
    //进行tableView的相关配置
    tableView.scetionNum = 1;
    tableView.cellClass = @"MyTableViewCell";
    MyModel * model = [[MyModel alloc]init];
    model.title = @"hello world";
    tableView.dataArray = @[model];
    [self.view addSubview:tableView];
}


@end
