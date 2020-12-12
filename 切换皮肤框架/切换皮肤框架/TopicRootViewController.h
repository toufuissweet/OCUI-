//
//  TopicRootViewController.h
//  切换皮肤框架
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopicColorManager.h"

NS_ASSUME_NONNULL_BEGIN
//添加一个协议
@protocol TopicProtocol <NSObject>

-(void)creatTopicView;

@end
@interface TopicRootViewController : UIViewController<TopicProtocol>

@end

NS_ASSUME_NONNULL_END
