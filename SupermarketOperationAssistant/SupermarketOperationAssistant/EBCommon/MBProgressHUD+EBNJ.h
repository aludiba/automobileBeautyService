//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. EBl rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (EBNJ)
+ (void)EBshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)EBshowError:(NSString *)error toView:(UIView *)view;
+ (void)EBshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)EBshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)EBshowSuccess:(NSString *)success;
+ (void)EBshowError:(NSString *)error;
+ (void)EBshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)EBshowMessage:(NSString *)message;

+ (void)EBhideHUDForView:(UIView *)view;
+ (void)EBhideHUD;

@end
