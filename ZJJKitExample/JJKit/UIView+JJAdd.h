//
//  UIView+JJAdd.h
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/10/8.
//  Copyright © 2019 天空吸引我. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (JJAdd)

/// 添加单击手势
/// @param tapAction tapAction description
- (void)addClickedBlock:(void(^)(id obj))tapAction;

@end

NS_ASSUME_NONNULL_END
