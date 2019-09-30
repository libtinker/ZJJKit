//
//  GesturePasswordVC.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/20.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import "GesturePasswordVC.h"
#import "JJKit.h"

@interface GesturePasswordVC ()

@property (nonatomic,strong) NSString *name;

@end

@implementation GesturePasswordVC

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"请设置手势密码");

    UIImage *seleted = [UIImage imageNamed:@"ZJJGuesturePassword.bundle/SSMM_highLight"];
    UIImage *normal = [UIImage imageNamed:@"ZJJGuesturePassword.bundle/SSMM_normal"];

    JJGesturePasswordView *view = [[JJGesturePasswordView alloc] initWithFrame:CGRectMake(0, 88, self.view.bounds.size.width, self.view.bounds.size.width) normalImage:normal selectImage:seleted complete:^(NSString *password) {
        NSLog(@"%@",password);
    }];
    [self.view addSubview:view];
}


@end
