//
//  StringAdd.m
//  ZJJKitExampleTests
//
//  Created by 天空吸引我 on 2019/3/16.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+JJAdd.h"
#import "NSObject+JJAdd.h"

@interface StringAdd : XCTestCase

@end

@implementation StringAdd

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.

    NSArray *arr = @[@"1",@"2"];
    NSNumber *num = @(10);
    NSDictionary *dict = [NSDictionary dictionary];
    NSData *data = [[NSData alloc] init];
    XCTAssertTrue([num.toString isKindOfClass:NSString.class],@"转化失败");
    XCTAssertTrue([@"lalla".toString isKindOfClass:NSString.class],@"转化失败");
    XCTAssertTrue([data.toString isKindOfClass:NSString.class],@"转化失败");
    XCTAssertTrue([[arr toString] isKindOfClass:NSString.class],@"转化失败");
    XCTAssertTrue([[dict toString] isKindOfClass:NSString.class],@"转化失败");
}

- (void)testString {
    //aes加密测试
    NSString *encryptString = [@"{}" aes256EncryptWithKey:@"devKey1234567890" iv:@"hhr-api-iv-param"];
    XCTAssertTrue(encryptString != nil,@"AES加密算法出错");
    NSString *decryptString = [encryptString aes256DecryptWithKey:@"devKey1234567890" iv:@"hhr-api-iv-param"];
    XCTAssertTrue([decryptString isEqualToString:@"{}"],@"AES解密算法出错");

    //base64加密
    NSString *base64EncryptString = [@"123456" base64EncodedString];
    XCTAssertTrue(base64EncryptString != nil,@"base64加密算法出错");
    NSString *base64DecryptString = [base64EncryptString base64DecodeString];
    XCTAssertTrue([base64DecryptString isEqualToString:@"123456"],@"base64解密出错");

    NSString *md5String = [@"123456" md5];
    //@"E10ADC3949BA59ABBE56E057F20F883E" 网络的32位结果
    XCTAssertTrue([@"E10ADC3949BA59ABBE56E057F20F883E" isEqualToString:md5String],@"md5加密结果错误");
    XCTAssertTrue([@"11111111111111111X" isIDCard],@"身份证错误");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
