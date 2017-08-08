//
//  NSString+DecimalNumber.m
//  test_string
//
//  Created by WangS on 2017/8/8.
//  Copyright © 2017年 WangS. All rights reserved.
//

#import "NSString+DecimalNumber.h"

@implementation NSString (DecimalNumber)
+(NSString *)str:(NSString *)firstStr addStr:(NSString *)secondStr{
    NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:firstStr];
    NSDecimalNumber *num2 = [NSDecimalNumber decimalNumberWithString:secondStr];
    NSDecimalNumber *resultNum = [num1 decimalNumberByAdding:num2];
    return [NSString notRounding:resultNum afterPoint:2];
}
+(NSString *)str:(NSString *)firstStr subtractStr:(NSString *)secondStr{
    NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:firstStr];
    NSDecimalNumber *num2 = [NSDecimalNumber decimalNumberWithString:secondStr];
    NSDecimalNumber *resultNum = [num1 decimalNumberBySubtracting:num2];
    return [NSString notRounding:resultNum afterPoint:2];
}
+(NSString *)str:(NSString *)firstStr multiplyStr:(NSString *)secondStr{
    NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:firstStr];
    NSDecimalNumber *num2 = [NSDecimalNumber decimalNumberWithString:secondStr];
    NSDecimalNumber *resultNum = [num1 decimalNumberByMultiplyingBy:num2];
    return [NSString notRounding:resultNum afterPoint:2];
}
+(NSString *)str:(NSString *)firstStr dividStr:(NSString *)secondStr{
    NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:firstStr];
    NSDecimalNumber *num2 = [NSDecimalNumber decimalNumberWithString:secondStr];
    NSDecimalNumber *resultNum = [num1 decimalNumberByDividingBy:num2];
    return [NSString notRounding:resultNum afterPoint:2];
}
+ (NSString *)notRounding:(NSDecimalNumber *)resultNum afterPoint:(NSInteger)position{
    NSDecimalNumberHandler* roundingBehavior = [NSDecimalNumberHandler                                                decimalNumberHandlerWithRoundingMode:NSRoundUp scale:position raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
   NSDecimalNumber *roundedOunces = [resultNum decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    NSString* string = [NSString stringWithFormat:@"%@",roundedOunces];
    if ([string rangeOfString:@"."].length==0) {
        string=  [string stringByAppendingString:@".00"];
    }else{
        NSRange range = [string rangeOfString:@"."];
        if (string.length-range.location-1==2) {
            
        }else{
            string=   [string stringByAppendingString:@"0"];
        }
    }
    return string;//整数.00格式
}

@end
