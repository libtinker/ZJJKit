//
//  ViewController.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/16.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import "ViewController.h"
#import "JJKit/JJKit.h"

@interface ViewController ()
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = UIColor.whiteColor;

    [self.view addClickedBlock:^(id  _Nonnull obj) {

    }];

}

@end
