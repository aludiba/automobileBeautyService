//
//  PLNLuckyNumbersViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNLuckyNumbersViewController.h"

@interface PLNLuckyNumbersViewController ()

@end

@implementation PLNLuckyNumbersViewController
+ (PLNLuckyNumbersViewController *)shareInstance{
    static PLNLuckyNumbersViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PLNLuckyNumbersViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
#pragma mark - actions
- (void)PLNsaveAction{
    
}
@end
