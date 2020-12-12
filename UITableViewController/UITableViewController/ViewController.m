//
//  ViewController.m
//  UITableViewController
//
//  Created by 小天才 on 2020/8/14.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self presentViewController:[[TableViewController alloc]init] animated:YES completion:nil];
}

@end
