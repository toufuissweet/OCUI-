//
//  MyTableView.m
//  不需要delegate的tableViewControler
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "MyTableView.h"
#import "MyTableViewCell.h"
@implementation MyTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate=self;
        self.dataSource=self;
    }
    return self;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _scetionNum;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    Class class =  NSClassFromString(_cellClass);
    MyTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    if (cell==nil) {
        cell = [[class alloc]init];
        [cell creatCellWithModel:_dataArray[indexPath.row]];
    }
    return cell;
}
@end
