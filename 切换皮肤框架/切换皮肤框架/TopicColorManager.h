//
//  TopicColorManager.h
//  切换皮肤框架
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//创建一个枚举
typedef enum{
    day,//白天模式
    night //夜间模式
} TopicColorModel;
//可以引用topicModel的类
@class TopicModel;

@interface TopicColorManager : NSObject
//类方法创建类对象
+(TopicColorManager *)sharedManager;
@property(nonatomic,assign)TopicColorModel topicColorModel;
@property(nonatomic,strong)TopicModel * topicModel;
//向外界提供一个方法，发出主题更换的通知
+(void)sendMessageAboutTopic;

//向外界提供Model一个方法
+(void)changeTopicModel:(TopicColorModel)colorModel;
@end
//再声明一个类
@interface TopicModel : NSObject
@property(nonatomic,strong)UIColor * backgroundColor;
@property(nonatomic,strong)UIColor * labelColor;
@property(nonatomic,strong)UIColor * textColor;
@end

