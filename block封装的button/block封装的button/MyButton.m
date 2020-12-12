//
//  MyButton.m
//  block封装的button
//
//  Created by 小天才 on 2020/8/16.
//  Copyright © 2020年 小天才. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton{
    void(^blk)(void);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)addAction:(void (^)(void))block{
    //引用自己weak的指针
    __weak id __self = self;
    [self addTarget:__self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    blk = block;
}

-(void)click{
    blk();
}
@end
