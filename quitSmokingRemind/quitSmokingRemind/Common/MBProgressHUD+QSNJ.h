//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (QSNJ)
+ (void)QSshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)QSshowError:(NSString *)error toView:(UIView *)view;
+ (void)QSshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)QSshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)QSshowSuccess:(NSString *)success;
+ (void)QSshowError:(NSString *)error;
+ (void)QSshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)QSshowMessage:(NSString *)message;

+ (void)QShideHUDForView:(UIView *)view;
+ (void)QShideHUD;

@end
