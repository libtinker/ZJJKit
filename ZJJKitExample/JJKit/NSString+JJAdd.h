//
//  NSString+JJAdd.h
//  ZJJKitExample
//
//  Created by 天空吸引我 on 2019/3/16.
//  Copyright © 2019年 天空吸引我. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (JJAdd)

#pragma mark ------ 加密相关 ------
/**
 aes加密（对称加密）

 @param key 加密秘钥
 @param iv 向量
 @return 加密后的字符串
 */
- (NSString *)aes256EncryptWithKey:(NSString *)key iv:(NSString *)iv;

/**
 aes解密（对称加密）

 @param key 解密秘钥
 @param iv 向量
 @return 解密后的字符串
 */
- (NSString *)aes256DecryptWithKey:(NSString *)key iv:(NSString *)iv;

/**
 base64加密

 @return 加密后的字符串
 */
- (NSString *)base64EncodedString;

/**
 base64解密

 @return 解密后的字符串
 */
- (NSString *)base64DecodeString;

/**
 md5加密（不可逆）

 @return 加密后字符串
 */
- (NSString *)md5;

#pragma mark ------ 字符串验证 ------

/** 是否为邮箱*/
- (BOOL)isEmail;

/** 是否为纯数字*/
- (BOOL)isNumber;

/** 是否为身份证*/
- (BOOL)isIDCard;

/** 是否为字母*/
- (BOOL)isLetter;

/** 标点符号 */
- (BOOL)isPunctuation;

/** 汉语 */
- (BOOL)isChinese;

@end

NS_ASSUME_NONNULL_END
