//
//  MyTableViewCell.h
//  不需要delegate的tableViewControler
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell
-(void)creatCellWithModel:(id)model;
@end

NS_ASSUME_NONNULL_END
