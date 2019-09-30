//
//  main.m
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/16.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

CFAbsoluteTime AppStartLaunchTime;

int main(int argc, char * argv[]) {
    @autoreleasepool {
        AppStartLaunchTime = CFAbsoluteTimeGetCurrent();
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
