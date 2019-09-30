//
//  CarouselViewController.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/20.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import "CarouselViewController.h"
#import "JJKit/JJCarouselView.h"
#import "NSObject+JJBuilder.h"

@interface CarouselViewController ()

@end

@implementation CarouselViewController

- (void)testBtnCliced {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
  //  [self carouseView];
    self.view.backgroundColor = [UIColor whiteColor];
    ButtonBuilder builder = {
        @"anniu",
        UIColor.redColor,
        UIColor.whiteColor,
        [UIFont systemFontOfSize:15],
        CGRectMake(50, 20, 200, 50),
        self,
        @selector(testBtnCliced),
    };
    UIButton *button = [UIButton createButtonWithBuilder:builder];
    [self.view addSubview:button];
    
    TapGestureRecognizerBuilder tapBuilder = {
        self,
        @selector(tagClicked)
    };
    UITapGestureRecognizer *tap = [UITapGestureRecognizer createGestureRecognizerWithBuilder:tapBuilder];
    
    ImageViewBuilder imageBuilder = {
        CGRectMake(100, 300, 50, 50),
        nil,
        tap,
    };
    UIImageView *imageView = [UIImageView createImageViewWithBuilder:imageBuilder];
    imageView.backgroundColor = UIColor.redColor;
    [self.view addSubview:imageView];
    
}

- (void)tagClicked {
    
}

- (void)carouseView {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"imgurl" ofType:@"plist"];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    JJCarouselView *view = [[JJCarouselView alloc] initWithFrame:CGRectMake(0, 44, self.view.bounds.size.width, self.view.bounds.size.height-44-36) imageUrls:array imgClicked:^(NSInteger index) {
        NSLog(@"轮播图被点击%ld",(long)index);
    }];
    [self.view addSubview:view];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
