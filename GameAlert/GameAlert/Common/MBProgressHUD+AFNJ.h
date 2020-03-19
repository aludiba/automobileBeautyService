//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (AFNJ)
+ (void)AFshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)AFshowError:(NSString *)error toView:(UIView *)view;
+ (void)AFshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)AFshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)AFshowSuccess:(NSString *)success;
+ (void)AFshowError:(NSString *)error;
+ (void)AFshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)AFshowMessage:(NSString *)message;

+ (void)AFhideHUDForView:(UIView *)view;
+ (void)AFhideHUD;

@end
