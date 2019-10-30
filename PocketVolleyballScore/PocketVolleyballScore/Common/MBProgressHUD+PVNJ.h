//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PVNJ)
+ (void)PVshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PVshowError:(NSString *)error toView:(UIView *)view;
+ (void)PVshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PVshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PVshowSuccess:(NSString *)success;
+ (void)PVshowError:(NSString *)error;
+ (void)PVshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PVshowMessage:(NSString *)message;

+ (void)PVhideHUDForView:(UIView *)view;
+ (void)PVhideHUD;

@end
