//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (AHNJ)
+ (void)AHshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)AHshowError:(NSString *)error toView:(UIView *)view;
+ (void)AHshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)AHshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)AHshowSuccess:(NSString *)success;
+ (void)AHshowError:(NSString *)error;
+ (void)AHshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)AHshowMessage:(NSString *)message;

+ (void)AHhideHUDForView:(UIView *)view;
+ (void)AHhideHUD;

@end
