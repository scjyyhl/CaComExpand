//
//  NSData+Expand.h
//  UDPAssistant
//
//  Created by Ch-Yanghl on 17/3/19.
//  Copyright © 2017年 hailong.yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (CaComExpandHexString)

/**
 用十六进制字符串创建对象

 @param str 十六进制字符串
 @return 创建的对象
 */
+ (instancetype _Nullable)dataFromHexString:(NSString * _Nonnull)str;

/**
 将该对象转换成十六进制字符串

 @return 转换的十六进制字符串
 */
- (NSString * _Nonnull)toHexStr;

@end
