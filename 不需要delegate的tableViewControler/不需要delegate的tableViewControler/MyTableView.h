//
//  MyTableView.h
//  不需要delegate的tableViewControler
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableView : UITableView<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,assign)NSInteger scetionNum;
@property(nonatomic,strong)NSArray * dataArray;
@property(nonatomic,strong)NSString * cellClass;
@end



NS_ASSUME_NONNULL_END
