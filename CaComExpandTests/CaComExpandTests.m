//
//  CaComExpandTests.m
//  CaComExpandTests
//
//  Created by Ch-Yanghl on 17/3/31.
//  Copyright © 2017年 HaiLong.Yang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Expand.h"

@interface CaComExpandTests : XCTestCase

@end

@implementation CaComExpandTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExampleIsHexStr {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *testStr = @"FF CC 02 4C 3F";
    XCTAssertTrue([testStr isHexString]);
}

- (void)testExampleToHexStr {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *testStr = @"FF CC 02 4C 3F";
    NSString *hexStr = [testStr toHexString];
    XCTAssertTrue([hexStr isEqualToString:@"46 46 20 43 43 20 30 32 20 34 43 20 33 46"]);
}

- (void)testExampleHexOrToHexStr {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *testStr = @"我是中国人";
    NSString *hexStr;
    if ([testStr isHexString]) {
        hexStr = testStr;
    }
    else {
        hexStr = [testStr toHexString];
    }
    XCTAssertTrue([hexStr isEqualToString:@"62 11 66 2F 4E 2D 56 FD 4E BA"]);
//    XCTAssertTrue([hexStr isEqualToString:@"46 46 20 43 43 20 30 32 20 34 43 20 33 46"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
