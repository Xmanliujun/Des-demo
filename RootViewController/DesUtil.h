//
//  DesUtil.h
//  RootViewController
//
//  Created by XmL on 13-3-19.
//  Copyright (c) 2013年 XmL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DesUtil : NSObject
/**
 DES加密
 */
+(NSString *) encryptUseDES:(NSString *)plainText key:(NSString *)key;

/**
 DES解密
 */
+(NSString *) decryptUseDES:(NSString *)plainText key:(NSString *)key;
@end
