//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (AKNJ)
+ (void)AKshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)AKshowError:(NSString *)error toView:(UIView *)view;
+ (void)AKshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)AKshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)AKshowSuccess:(NSString *)success;
+ (void)AKshowError:(NSString *)error;
+ (void)AKshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)AKshowMessage:(NSString *)message;

+ (void)AKhideHUDForView:(UIView *)view;
+ (void)AKhideHUD;

@end
