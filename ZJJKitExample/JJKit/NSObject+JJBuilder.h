//
//  NSObject+JJBuilder.h
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/9/28.
//  Copyright © 2019 天空吸引我. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct LabelBuilder {
    NSString    *text;
    UIColor     *textColor;
    UIFont      *font;
    CGRect       rect;
} LabelBuilder;

typedef struct ButtonBuilder {
    NSString    *text;
    UIColor     *textColor;
    UIColor     *backgroundColor;
    UIFont      *font;
    CGRect       rect;
    id           target;
    SEL          action;
} ButtonBuilder;

typedef struct TableViewBuilder {
    CGRect              rect;
    UITableViewStyle    style;
    id                  delegate;
    id                  dataSource;
    Class               cellClass;
    NSString           *identifier;
    CGFloat             rowHeight;
    UITableViewCellSeparatorStyle  separatorStyle;
} TableViewBuilder;

typedef struct TextFieldBuilder {
    UIColor             *textColor;
    UIFont              *font;
    CGRect               rect;
    NSString            *placeholder;
    UIKeyboardType       keyboardType;
    id                   delegate;
} TextFieldBuilder;

typedef struct ImageViewBuilder {
    CGRect                   rect;
    UIImage                 *image;
    UIGestureRecognizer     *gestureRecognizer;
}ImageViewBuilder;

typedef struct TapGestureRecognizerBuilder {
    id                      target;
    SEL                     action;
} TapGestureRecognizerBuilder;
@interface NSObject (JJBuilder)

///UILabel的构建
/// @param builder 构建器
+ (UILabel *)createLabelWithBuilder:(LabelBuilder)builder;

/// UIButton的构建
/// @param builder 构建器
+ (UIButton *)createButtonWithBuilder:(ButtonBuilder)builder;

/// 创建UITableView
/// @param builder 构建器
+ (UITableView *)createTableViewWithBuilder:(TableViewBuilder)builder;

/// UITextField的构建
/// @param builder 构造器
+ (UITextField *)createTextFieldWithBuilder:(TextFieldBuilder)builder;

/// UIImageView 的构建
/// @param builder 构建器
+ (UIImageView *)createImageViewWithBuilder:(ImageViewBuilder)builder;

/// 创建（UITapGestureRecognizer）单击手势
/// @param builder  构建器
+ (UITapGestureRecognizer *)createGestureRecognizerWithBuilder:(TapGestureRecognizerBuilder)builder;
@end

NS_ASSUME_NONNULL_END
