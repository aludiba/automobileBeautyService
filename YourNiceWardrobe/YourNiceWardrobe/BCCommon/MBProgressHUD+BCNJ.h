//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. BCl rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (BCNJ)
+ (void)BCshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)BCshowError:(NSString *)error toView:(UIView *)view;
+ (void)BCshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)BCshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)BCshowSuccess:(NSString *)success;
+ (void)BCshowError:(NSString *)error;
+ (void)BCshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)BCshowMessage:(NSString *)message;

+ (void)BChideHUDForView:(UIView *)view;
+ (void)BChideHUD;

@end
