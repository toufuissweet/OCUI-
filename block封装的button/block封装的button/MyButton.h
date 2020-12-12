//
//  MyButton.h
//  block封装的button
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyButton : UIButton
//返回值为空 参数为空的block
-(void)addAction:(void(^)(void))block;
@end

NS_ASSUME_NONNULL_END
