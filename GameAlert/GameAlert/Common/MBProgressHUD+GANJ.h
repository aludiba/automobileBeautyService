//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (GANJ)
+ (void)GAshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)GAshowError:(NSString *)error toView:(UIView *)view;
+ (void)GAshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)GAshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)GAshowSuccess:(NSString *)success;
+ (void)GAshowError:(NSString *)error;
+ (void)GAshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)GAshowMessage:(NSString *)message;

+ (void)GAhideHUDForView:(UIView *)view;
+ (void)GAhideHUD;

@end
