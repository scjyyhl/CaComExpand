//
//  NSString+Expand.m
//  CaComExpand
//
//  Created by Ch-Yanghl on 17/3/31.
//  Copyright © 2017年 HaiLong.Yang. All rights reserved.
//

#import "NSString+Expand.h"

@implementation NSString (CaComExpandHexString)

- (BOOL)isHexString {
    for (int i = 0; i < self.length; i++) {
        unichar ch = [self characterAtIndex:i];
        if (ch == ' ' || ch == '\r' || ch == '\n') {
            continue;
        }
        if (ch < 0x30) {
            return NO;
        }
        if (ch > 0x39 && ch < 0x41) {
            return NO;
        }
        if (ch > 0x46 && ch < 0x61) {
            return NO;
        }
        if (ch > 0x66) {
            return NO;
        }
    }
    
    return YES;
}

- (NSString *)toHexString {
    NSMutableString *rtnStr = [[NSMutableString alloc] initWithCapacity:3];
    unichar pch[self.length];
    [self getCharacters:pch];
    for (uint16_t i = 0; i < self.length; i++) {
        char tch[6];
        if (pch[i] > 0xFF) {
            sprintf(tch, "%X", pch[i] >> 8);
            sprintf((tch + 2), " %X", pch[i] & 0xFF);
        }
        else {
            sprintf(tch, "%X", pch[i]);
        }
        [rtnStr appendString:[NSString stringWithCString:tch encoding:NSASCIIStringEncoding]];
        [rtnStr appendString:@" "];
    }
    [rtnStr deleteCharactersInRange:NSMakeRange(rtnStr.length - 1, 1)];
    return rtnStr;
}

@end
