//
//  NSDate+Expand.m
//  Fishing
//
//  Created by Ch-Yanghl on 17/2/6.
//  Copyright © 2017年 hailong.yang. All rights reserved.
//

#import "NSDate+Expand.h"

#define SEC_YEAR        (365 * 24 * 60 * 60)
#define SEC_MONTH       (30 * 24 * 60 * 60)
#define SEC_DAY         (24 * 60 * 60)
#define SEC_HOURE       (60 * 60)
#define SEC_MINUTE      (60)

@implementation NSDate (CaComExpandTimePass)

- (NSString *)TimePass {
    int pass = 0;
    NSString *rtnStr = nil;
    double dintervel = [self timeIntervalSinceNow] * -1;
    if (dintervel > SEC_YEAR) {
        pass = dintervel / SEC_YEAR;
        rtnStr = [NSString stringWithFormat:@"%d年前", pass];
    }
    else if (dintervel > SEC_MONTH) {
        pass = dintervel / SEC_MONTH;
        rtnStr = [NSString stringWithFormat:@"%d月前", pass];
    }
    else if (dintervel > SEC_DAY) {
        pass = dintervel / SEC_DAY;
        rtnStr = [NSString stringWithFormat:@"%d天前", pass];
    }
    else if (dintervel > SEC_HOURE) {
        pass = dintervel / SEC_HOURE;
        rtnStr = [NSString stringWithFormat:@"%d小时前", pass];
    }
    else if (dintervel > SEC_MINUTE) {
        pass = dintervel / SEC_MINUTE;
        rtnStr = [NSString stringWithFormat:@"%d分钟前", pass];
    }
    else {
        pass = dintervel;
        rtnStr = [NSString stringWithFormat:@"%d秒前", pass];
    }
    return rtnStr;
}
@end

@implementation NSDate (CaComExpandStringFormatter)

+ (instancetype)dateWithString:(NSString *)timeStr Format:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    [formatter setLocale:[NSLocale localeWithLocaleIdentifier:@"zh_CN"]];
    return [formatter dateFromString:timeStr];
}

- (NSString *)toStrigWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    [formatter setLocale:[NSLocale localeWithLocaleIdentifier:@"zh_CN"]];
    return [formatter stringFromDate:self];
}

- (NSString *)toString {
    return [self toStrigWithFormat:@"yyyy-MM-dd HH:mm:ss"];
}

@end
