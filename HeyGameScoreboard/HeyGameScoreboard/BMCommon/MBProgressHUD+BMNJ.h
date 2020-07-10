//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. BMl rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (BMNJ)
+ (void)BMshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)BMshowError:(NSString *)error toView:(UIView *)view;
+ (void)BMshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)BMshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)BMshowSuccess:(NSString *)success;
+ (void)BMshowError:(NSString *)error;
+ (void)BMshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)BMshowMessage:(NSString *)message;

+ (void)BMhideHUDForView:(UIView *)view;
+ (void)BMhideHUD;

@end
