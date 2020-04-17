//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (ALNJ)
+ (void)ALshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)ALshowError:(NSString *)error toView:(UIView *)view;
+ (void)ALshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)ALshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)ALshowSuccess:(NSString *)success;
+ (void)ALshowError:(NSString *)error;
+ (void)ALshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)ALshowMessage:(NSString *)message;

+ (void)ALhideHUDForView:(UIView *)view;
+ (void)ALhideHUD;

@end
