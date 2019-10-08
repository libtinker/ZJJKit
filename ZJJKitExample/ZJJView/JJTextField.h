//
//  JJTextField.h
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/9/30.
//  Copyright © 2019 天空吸引我. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, JJTextFieldType) {
    JJTextFieldTypeCustom = 0,
    JJTextFieldTypePhone,
    JJTextFieldTypeName,
};
@interface JJTextField : UITextField

+ (JJTextField *)createTextFieldWithFrame:(CGRect)frame type:(JJTextFieldType)type;

@end

NS_ASSUME_NONNULL_END
