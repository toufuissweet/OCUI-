//
//  MyTableViewCell.m
//  不需要delegate的tableViewControler
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "MyTableViewCell.h"
#import "MyModel.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)creatCellWithModel:(id)model{
    MyModel * mod = (MyModel *)model;
    self.textLabel.text = mod.title;
}
@end
