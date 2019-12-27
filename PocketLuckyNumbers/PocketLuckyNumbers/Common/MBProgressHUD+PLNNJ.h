//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PLNNJ)
+ (void)PLNshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PLNshowError:(NSString *)error toView:(UIView *)view;
+ (void)PLNshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PLNshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PLNshowSuccess:(NSString *)success;
+ (void)PLNshowError:(NSString *)error;
+ (void)PLNshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PLNshowMessage:(NSString *)message;

+ (void)PLNhideHUDForView:(UIView *)view;
+ (void)PLNhideHUD;

@end
