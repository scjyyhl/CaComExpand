//
//  NSDate+Expand.h
//  Fishing
//
//  Created by Ch-Yanghl on 17/2/6.
//  Copyright © 2017年 hailong.yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (TimePass)

/**
 返回该日期是今天的多久之前的；如1秒钟前，1分钟前，1小时前，1天前，1月前，1年前等...

 @return 返回的字符串
 */
- (NSString  * _Nonnull)TimePass;

@end

@interface NSDate (StringFormatter)

/**
 根据日期字符串创建NSDate对象

 @param timeStr 日期字符串
 @param format 日期的格式字符串
 @return 返回日期对象
 */
+ (instancetype _Nullable)dateWithString:(NSString * _Nonnull)timeStr
                                  Format:(NSString * _Nonnull)format;

/**
 格式化日期时间字符串

 @param format 日期时间的格式；如（yyyy-MM-dd HH:mm:ss）
 @return 返回格式化的字符串
 */
- (NSString * _Nullable)toStrigWithFormat:(NSString * _Nonnull)format;

/**
 格式化日期时间字符串（yyyy-MM-dd HH:mm:ss）

 @return 返回格式化后的日期时间字符串
 */
- (NSString * _Nullable)toString;

@end
