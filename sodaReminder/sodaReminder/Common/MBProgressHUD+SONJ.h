//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (SONJ)
+ (void)SOshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)SOshowError:(NSString *)error toView:(UIView *)view;
+ (void)SOshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)SOshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)SOshowSuccess:(NSString *)success;
+ (void)SOshowError:(NSString *)error;
+ (void)SOshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)SOshowMessage:(NSString *)message;

+ (void)SOhideHUDForView:(UIView *)view;
+ (void)SOhideHUD;

@end
