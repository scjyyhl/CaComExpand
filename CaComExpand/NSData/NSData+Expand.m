//
//  NSData+Expand.m
//  UDPAssistant
//
//  Created by Ch-Yanghl on 17/3/19.
//  Copyright © 2017年 hailong.yang. All rights reserved.
//

#import "NSData+Expand.h"

@implementation NSData (CaComExpandHexString)

- (NSString *)toHexStr {
    if (self == nil || self.length < 1) {
        return @"";
    }
    
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:(self.length * 3)];
    const char *bytes = [self bytes];
    [string appendFormat:@"%02hhX", (unsigned char)bytes[0]];
    for (int i = 1; i < self.length; i++) {
        [string appendFormat:@" %02hhX", (unsigned char)bytes[i]];
    }
    
    return string;
}

+ (instancetype)dataFromHexString:(NSString *)str {
    if (!str || [str length] == 0) {
        return nil;
    }
    
    NSMutableData *hexData = [[NSMutableData alloc] initWithCapacity:8];
    NSRange range;
    if ([str length] % 2 == 0) {
        range = NSMakeRange(0, 2);
    } else {
        range = NSMakeRange(0, 1);
    }
    for (NSInteger i = range.location; i < [str length]; i += 2) {
        unsigned int anInt;
        NSString *hexCharStr = [str substringWithRange:range];
        NSScanner *scanner = [[NSScanner alloc] initWithString:hexCharStr];
        
        [scanner scanHexInt:&anInt];
        NSData *entity = [[NSData alloc] initWithBytes:&anInt length:1];
        [hexData appendData:entity];
        
        range.location += range.length;
        range.length = 2;
    }
    
    return hexData;
}

@end
