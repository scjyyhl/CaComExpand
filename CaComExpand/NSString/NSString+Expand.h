//
//  NSString+Expand.h
//  CaComExpand
//
//  Created by Ch-Yanghl on 17/3/31.
//  Copyright © 2017年 HaiLong.Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CaComExpandHexString)

/**
 判断该字符串是否是十六进制字符串（将忽略空格）

 @return 返回YES表示是十六进制字符串
 */
- (BOOL)isHexString;

/**
 将该字符串输出成十六进制字符串

 @return 十六进制字符串
 */
- (NSString *)toHexString;

@end
