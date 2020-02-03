//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (CVSNJ)
+ (void)CVSshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)CVSshowError:(NSString *)error toView:(UIView *)view;
+ (void)CVSshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)CVSshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)CVSshowSuccess:(NSString *)success;
+ (void)CVSshowError:(NSString *)error;
+ (void)CVSshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)CVSshowMessage:(NSString *)message;

+ (void)CVShideHUDForView:(UIView *)view;
+ (void)CVShideHUD;

@end
