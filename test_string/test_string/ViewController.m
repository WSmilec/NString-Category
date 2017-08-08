//
//  ViewController.m
//  test_string
//
//  Created by WangS on 2017/8/8.
//  Copyright © 2017年 WangS. All rights reserved.
//

#import "ViewController.h"
#import "NSString+DecimalNumber.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    NSString *str1 = @"20";
    NSString *str2 = @"0.019";
    NSLog(@"--- %@",[NSString str:str1 addStr:str2]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
