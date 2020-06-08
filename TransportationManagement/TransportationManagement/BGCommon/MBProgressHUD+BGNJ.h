//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (BGNJ)
+ (void)BGshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)BGshowError:(NSString *)error toView:(UIView *)view;
+ (void)BGshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)BGshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)BGshowSuccess:(NSString *)success;
+ (void)BGshowError:(NSString *)error;
+ (void)BGshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)BGshowMessage:(NSString *)message;

+ (void)BGhideHUDForView:(UIView *)view;
+ (void)BGhideHUD;

@end
