//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (CFNJ)
+ (void)CFshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)CFshowError:(NSString *)error toView:(UIView *)view;
+ (void)CFshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)CFshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)CFshowSuccess:(NSString *)success;
+ (void)CFshowError:(NSString *)error;
+ (void)CFshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)CFshowMessage:(NSString *)message;

+ (void)CFhideHUDForView:(UIView *)view;
+ (void)CFhideHUD;

@end
