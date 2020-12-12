//
//  TopicColorManager.m
//  切换皮肤框架
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "TopicColorManager.h"

@implementation TopicColorManager
//实现单例方法
+(TopicColorManager *)sharedManager{
    static TopicColorManager * manager = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        manager = [[TopicColorManager alloc]init];
    });
    return manager;
}

+(void)changeTopicModel:(TopicColorModel)colorModel{
    TopicColorManager * manager = [TopicColorManager sharedManager];
    TopicModel * model = manager.topicModel;
    manager.topicColorModel = colorModel;
    switch (manager.topicColorModel) {
        case day:
        {
            model.backgroundColor = [UIColor whiteColor];
            model.labelColor = [UIColor redColor];
            model.textColor = [UIColor blackColor];
        }
            break;
        case night:
        {
            model.backgroundColor = [UIColor grayColor];
            model.labelColor = [UIColor blueColor];
            model.textColor = [UIColor purpleColor];
        }
        default:
            break;
    }
    [TopicColorManager sendMessageAboutTopic];
}


//初始化为白天模式
-(instancetype)init{
    self = [super init];
    if (self) {
        self.topicColorModel = day;
        //初始化
        self.topicModel = [[TopicModel alloc]init];
        self.topicModel.backgroundColor = [UIColor whiteColor];
        self.topicModel.labelColor = [UIColor redColor];
        self.topicModel.textColor = [UIColor blackColor];
    }
    return self;
}

+(void)sendMessageAboutTopic{
    //发送某一个特定name的通知
    [[NSNotificationCenter defaultCenter]postNotificationName:@"TopicMessage" object:nil];
}
@end

@implementation TopicModel


@end
