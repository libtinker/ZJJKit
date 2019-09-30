//
//  UnitViewController.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/19.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import "UnitViewController.h"
#import "JJKit/JJUnitTextFiled.h"

@interface UnitViewController ()

@end

@implementation UnitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self unitTextFiled];

}

//验证码输入框
- (void)unitTextFiled {
    JJUnitTextFiled *textFiled = [[JJUnitTextFiled alloc] initWithFrame:CGRectMake(20, 100, 300, 50) textFiledStyle:JJUnitTextFiledStyleGrid inputBoxText:^(NSString * _Nonnull inputBoxText) {
        NSLog(@"%@",inputBoxText);
    }];
    [self.view addSubview:textFiled];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
