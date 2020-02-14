//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PVYWKNJ)
+ (void)PVYWKshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PVYWKshowError:(NSString *)error toView:(UIView *)view;
+ (void)PVYWKshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PVYWKshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PVYWKshowSuccess:(NSString *)success;
+ (void)PVYWKshowError:(NSString *)error;
+ (void)PVYWKshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PVYWKshowMessage:(NSString *)message;

+ (void)PVYWKhideHUDForView:(UIView *)view;
+ (void)PVYWKhideHUD;

@end
