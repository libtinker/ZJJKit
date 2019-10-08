//
//  ViewController.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/16.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import "ViewController.h"
#import "JJKit/JJKit.h"
#import "JJTextField.h"

@interface ViewController ()
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    JJTextField *textfiled = [JJTextField createTextFieldWithFrame:CGRectMake(20, 100, 300, 50) type:JJTextFieldTypePhone];
    textfiled.placeholder = @"dianhua";
    [self.view addSubview:textfiled];

}

@end
