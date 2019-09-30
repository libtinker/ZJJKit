//
//  ViewController.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/16.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import "ViewController.h"
#import "JJKit/JJKit.h"
#import "CarouselViewController.h"
#import "UnitViewController.h"
#import "GesturePasswordVC.h"
#import <UIImageView+WebCache.h>



@interface ViewController () <UITableViewDelegate,UITableViewDataSource> {
    NSArray *_dataArray;
}
@property (nonatomic , strong) UITableView *tableView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _dataArray = @[@"轮播图",@"验证码输入框",@"jj弹窗",@"手势密码"];
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 44;
        [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:NSStringFromClass(UITableViewCell.class)];
    }
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(UITableViewCell.class) forIndexPath:indexPath];
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            [self pushCarouseVC];
            break;
        case 1:
            [self pushUnitVC];
            break;
        case 2:
            [self showJJAlertViewContoller];
            break;
            case 3:
            [self pushGesturePassword];
        default:
            break;
    }
}

//jj弹窗
- (void)showJJAlertViewContoller {
 
}

- (void)pushCarouseVC {
    CarouselViewController *ctrl = [[CarouselViewController alloc] init];
    [self presentViewController:ctrl animated:YES completion:nil];
}

- (void)pushUnitVC {
    UnitViewController *ctrl = [[UnitViewController alloc] init];
    [self presentViewController:ctrl animated:YES completion:nil];
}

- (void)pushGesturePassword {
    GesturePasswordVC *ctrl = [[GesturePasswordVC alloc] init];
    [self presentViewController:ctrl animated:YES completion:nil];
}
@end
