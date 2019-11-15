//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (GFNJ)
+ (void)GFshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)GFshowError:(NSString *)error toView:(UIView *)view;
+ (void)GFshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)GFshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)GFshowSuccess:(NSString *)success;
+ (void)GFshowError:(NSString *)error;
+ (void)GFshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)GFshowMessage:(NSString *)message;

+ (void)GFhideHUDForView:(UIView *)view;
+ (void)GFhideHUD;

@end
