//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. LBl rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (LBNJ)
+ (void)LBshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)LBshowError:(NSString *)error toView:(UIView *)view;
+ (void)LBshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)LBshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)LBshowSuccess:(NSString *)success;
+ (void)LBshowError:(NSString *)error;
+ (void)LBshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)LBshowMessage:(NSString *)message;

+ (void)LBhideHUDForView:(UIView *)view;
+ (void)LBhideHUD;

@end
