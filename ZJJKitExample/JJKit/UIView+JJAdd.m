//
//  UIView+JJAdd.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/10/8.
//  Copyright © 2019 天空吸引我. All rights reserved.
//

#import "UIView+JJAdd.h"
#import <objc/message.h>

@interface UIView ()
@property void(^clickedAction)(id);
@end

@implementation UIView (JJAdd)

 - (void)setClickedAction:(void (^)(id))clickedAction{
     objc_setAssociatedObject(self, @"AddClickedEvent", clickedAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(id))clickedAction{
     return objc_getAssociatedObject(self, @"AddClickedEvent");
}

- (void)addClickedBlock:(void(^)(id obj))clickedAction{
    self.clickedAction = clickedAction;
    // hy:先判断当前是否有交互事件，如果没有的话。。。所有gesture的交互事件都会被添加进gestureRecognizers中
    if (![self gestureRecognizers]) {
        // hy:添加单击事件
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
        [self addGestureRecognizer:tap];
    }
}

- (void)tap{
    if (self.clickedAction) {
        self.clickedAction(self);
    }
}
@end
