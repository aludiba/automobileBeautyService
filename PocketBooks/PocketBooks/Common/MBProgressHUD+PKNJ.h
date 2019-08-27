//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PKNJ)
+ (void)PKshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PKshowError:(NSString *)error toView:(UIView *)view;
+ (void)PKshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PKshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PKshowSuccess:(NSString *)success;
+ (void)PKshowError:(NSString *)error;
+ (void)PKshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PKshowMessage:(NSString *)message;

+ (void)PKhideHUDForView:(UIView *)view;
+ (void)PKhideHUD;

@end
