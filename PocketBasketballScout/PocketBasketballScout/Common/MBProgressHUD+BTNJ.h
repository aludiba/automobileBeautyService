//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (BTNJ)
+ (void)BTshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)BTshowError:(NSString *)error toView:(UIView *)view;
+ (void)BTshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)BTshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)BTshowSuccess:(NSString *)success;
+ (void)BTshowError:(NSString *)error;
+ (void)BTshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)BTshowMessage:(NSString *)message;

+ (void)BThideHUDForView:(UIView *)view;
+ (void)BThideHUD;

@end
