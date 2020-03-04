//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (ABNJ)
+ (void)ABshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)ABshowError:(NSString *)error toView:(UIView *)view;
+ (void)ABshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)ABshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)ABshowSuccess:(NSString *)success;
+ (void)ABshowError:(NSString *)error;
+ (void)ABshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)ABshowMessage:(NSString *)message;

+ (void)ABhideHUDForView:(UIView *)view;
+ (void)ABhideHUD;

@end
