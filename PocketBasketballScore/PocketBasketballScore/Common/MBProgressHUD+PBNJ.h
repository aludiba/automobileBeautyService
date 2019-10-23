//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PBNJ)
+ (void)PBshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PBshowError:(NSString *)error toView:(UIView *)view;
+ (void)PBshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PBshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PBshowSuccess:(NSString *)success;
+ (void)PBshowError:(NSString *)error;
+ (void)PBshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PBshowMessage:(NSString *)message;

+ (void)PBhideHUDForView:(UIView *)view;
+ (void)PBhideHUD;

@end
