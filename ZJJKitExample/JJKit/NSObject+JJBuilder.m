//
//  NSObject+JJBuilder.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/9/28.
//  Copyright © 2019 天空吸引我. All rights reserved.
//

#import "NSObject+JJBuilder.h"

@implementation NSObject (JJBuilder)

+ (UILabel *)createLabelWithBuilder:(LabelBuilder)builder {
    UILabel *label = [[UILabel alloc] initWithFrame:builder.rect];
    label.text = builder.text;
    label.textColor = builder.textColor;
    label.font = builder.font;
    return label;
}

+ (UIButton *)createButtonWithBuilder:(ButtonBuilder)builder {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = builder.rect;
    button.titleLabel.font = builder.font;
    [button setTitle:builder.text forState:UIControlStateNormal];
    [button setTitleColor:builder.textColor forState:UIControlStateNormal];
    [button setBackgroundColor:builder.backgroundColor];
    [button addTarget:builder.target action:builder.action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (UITableView *)createTableViewWithBuilder:(TableViewBuilder)builder {
    UITableView *tableView = [[UITableView alloc] initWithFrame:builder.rect style:builder.style];
    tableView.delegate = builder.delegate;
    tableView.dataSource = builder.dataSource;
    tableView.rowHeight = builder.rowHeight;
    tableView.separatorStyle = builder.separatorStyle;
    [tableView registerClass:builder.cellClass forCellReuseIdentifier:builder.identifier];
    return tableView;
}

+ (UITextField *)createTextFieldWithBuilder:(TextFieldBuilder)builder {
    UITextField *textField = [[UITextField alloc] initWithFrame:builder.rect];
    textField.placeholder = builder.placeholder;
    textField.textColor = builder.textColor;
    textField.font = builder.font;
    textField.keyboardType = builder.keyboardType;
    textField.delegate = builder.delegate;
    return textField;
}

+ (UIImageView *)createImageViewWithBuilder:(ImageViewBuilder)builder {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:builder.rect];
    imageView.image = builder.image;
    imageView.userInteractionEnabled = YES;
    if (builder.gestureRecognizer) {
        [imageView addGestureRecognizer:builder.gestureRecognizer];
    }
    return imageView;
}

+ (UITapGestureRecognizer *)createGestureRecognizerWithBuilder:(TapGestureRecognizerBuilder)builder {
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:builder.target action:builder.action];
    gestureRecognizer.numberOfTapsRequired = 1;
    return gestureRecognizer;
}
@end
