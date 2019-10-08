//
//  JJTextField.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/9/30.
//  Copyright © 2019 天空吸引我. All rights reserved.
//

#import "JJTextField.h"
@interface PhoneTextField : JJTextField

@end

@implementation PhoneTextField

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.keyboardType = UIKeyboardTypePhonePad;
        [self addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}

- (void)textFieldDidChange:(UITextField *)textField {
    if (textField.text.length>11) {
        textField.text = [textField.text substringToIndex:11];
    }
}

@end

@implementation JJTextField

+ (JJTextField *)createTextFieldWithFrame:(CGRect)frame type:(JJTextFieldType)type {
    JJTextField *textField;
    switch (type) {
        case JJTextFieldTypeCustom: {

            break;
        }
        case  JJTextFieldTypePhone:
        {
            textField = [[PhoneTextField alloc] initWithFrame:frame];
        }
            break;

        case JJTextFieldTypeName: {

            break;
        }
    }
    return textField;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.textColor = UIColor.blackColor;
        self.font = [UIFont systemFontOfSize:14];
        self.keyboardType = UIKeyboardTypeDefault;
    }
    return self;
}

@end


