//
//  NSString+DecimalNumber.h
//  test_string
//
//  Created by WangS on 2017/8/8.
//  Copyright © 2017年 WangS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DecimalNumber)
+(NSString *)str:(NSString *)firstStr addStr:(NSString *)secondStr;
+(NSString *)str:(NSString *)firstStr subtractStr:(NSString *)secondStr;
+(NSString *)str:(NSString *)firstStr multiplyStr:(NSString *)secondStr;
+(NSString *)str:(NSString *)firstStr dividStr:(NSString *)secondStr;
@end
