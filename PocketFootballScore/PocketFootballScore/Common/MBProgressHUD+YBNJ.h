//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (YBNJ)
+ (void)YBshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)YBshowError:(NSString *)error toView:(UIView *)view;
+ (void)YBshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)YBshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)YBshowSuccess:(NSString *)success;
+ (void)YBshowError:(NSString *)error;
+ (void)YBshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)YBshowMessage:(NSString *)message;

+ (void)YBhideHUDForView:(UIView *)view;
+ (void)YBhideHUD;

@end
