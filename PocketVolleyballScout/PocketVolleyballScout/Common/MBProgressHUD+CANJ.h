//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (CANJ)
+ (void)CAshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)CAshowError:(NSString *)error toView:(UIView *)view;
+ (void)CAshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)CAshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)CAshowSuccess:(NSString *)success;
+ (void)CAshowError:(NSString *)error;
+ (void)CAshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)CAshowMessage:(NSString *)message;

+ (void)CAhideHUDForView:(UIView *)view;
+ (void)CAhideHUD;

@end
