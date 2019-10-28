//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PFNJ)
+ (void)PFshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PFshowError:(NSString *)error toView:(UIView *)view;
+ (void)PFshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PFshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PFshowSuccess:(NSString *)success;
+ (void)PFshowError:(NSString *)error;
+ (void)PFshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PFshowMessage:(NSString *)message;

+ (void)PFhideHUDForView:(UIView *)view;
+ (void)PFhideHUD;

@end
