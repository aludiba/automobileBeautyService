//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (ADNJ)
+ (void)ADshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)ADshowError:(NSString *)error toView:(UIView *)view;
+ (void)ADshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)ADshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)ADshowSuccess:(NSString *)success;
+ (void)ADshowError:(NSString *)error;
+ (void)ADshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)ADshowMessage:(NSString *)message;

+ (void)ADhideHUDForView:(UIView *)view;
+ (void)ADhideHUD;

@end
