//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (CBSNJ)
+ (void)CBSshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)CBSshowError:(NSString *)error toView:(UIView *)view;
+ (void)CBSshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)CBSshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)CBSshowSuccess:(NSString *)success;
+ (void)CBSshowError:(NSString *)error;
+ (void)CBSshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)CBSshowMessage:(NSString *)message;

+ (void)CBShideHUDForView:(UIView *)view;
+ (void)CBShideHUD;

@end
