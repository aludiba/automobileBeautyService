//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (AJNJ)
+ (void)AJshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)AJshowError:(NSString *)error toView:(UIView *)view;
+ (void)AJshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)AJshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)AJshowSuccess:(NSString *)success;
+ (void)AJshowError:(NSString *)error;
+ (void)AJshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)AJshowMessage:(NSString *)message;

+ (void)AJhideHUDForView:(UIView *)view;
+ (void)AJhideHUD;

@end
