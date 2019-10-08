//
//  ZJJGesturePasswordView.h
//  ZJJGesturePasswordExample
//
//  Created by 天空吸引我 on 2018/4/28.
//  Copyright © 2018年 天空吸引我. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface JJGesturePasswordView : UIView

/** btn图片 */
@property (nonatomic,strong,nonnull) UIImage *normalImage;

/** 选中的图片 */
@property (nonatomic,strong,nonnull) UIImage *selectImage;

/** 划线颜色 */
@property (nonatomic,strong) UIColor * _Nullable lineColor;

/** 划线宽度 */
@property (nonatomic,assign) CGFloat lineWidth;

/** 正在进行手势密码 */
@property (nonatomic,copy) void(^ _Nullable lockChangeBlock) (NSString * _Nullable index);

/**
 手势密码初始化方法

 @param frame frame
 @param normalImage 正常的⭕️
 @param selectImag 被选择的q⭕️
 @param complete 密码完成
 @return 当前的手势密码对象
 */
- (instancetype _Nullable )initWithFrame:(CGRect)frame normalImage:( UIImage * _Nonnull )normalImage selectImage:(UIImage * _Nonnull)selectImag complete:(void(^_Nullable)(NSString * _Nullable password))complete;

@end
