//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (IANJ)
+ (void)IAshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)IAshowError:(NSString *)error toView:(UIView *)view;
+ (void)IAshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)IAshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)IAshowSuccess:(NSString *)success;
+ (void)IAshowError:(NSString *)error;
+ (void)IAshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)IAshowMessage:(NSString *)message;

+ (void)IAhideHUDForView:(UIView *)view;
+ (void)IAhideHUD;

@end
