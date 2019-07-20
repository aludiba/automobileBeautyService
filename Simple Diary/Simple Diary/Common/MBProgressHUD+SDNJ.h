//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (SDNJ)
+ (void)SDshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)SDshowError:(NSString *)error toView:(UIView *)view;
+ (void)SDshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)SDshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)SDshowSuccess:(NSString *)success;
+ (void)SDshowError:(NSString *)error;
+ (void)SDshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)SDshowMessage:(NSString *)message;

+ (void)SDhideHUDForView:(UIView *)view;
+ (void)SDhideHUD;

@end
