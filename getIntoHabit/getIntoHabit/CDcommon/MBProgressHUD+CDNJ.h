//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (CDNJ)
+ (void)CDshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)CDshowError:(NSString *)error toView:(UIView *)view;
+ (void)CDshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)CDshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)CDshowSuccess:(NSString *)success;
+ (void)CDshowError:(NSString *)error;
+ (void)CDshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)CDshowMessage:(NSString *)message;

+ (void)CDhideHUDForView:(UIView *)view;
+ (void)CDhideHUD;

@end
