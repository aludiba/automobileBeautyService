//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PWNJ)
+ (void)PWshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PWshowError:(NSString *)error toView:(UIView *)view;
+ (void)PWshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PWshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PWshowSuccess:(NSString *)success;
+ (void)PWshowError:(NSString *)error;
+ (void)PWshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PWshowMessage:(NSString *)message;

+ (void)PWhideHUDForView:(UIView *)view;
+ (void)PWhideHUD;

@end
