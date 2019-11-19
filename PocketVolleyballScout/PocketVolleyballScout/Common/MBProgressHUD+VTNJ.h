//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (VTNJ)
+ (void)VTshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)VTshowError:(NSString *)error toView:(UIView *)view;
+ (void)VTshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)VTshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)VTshowSuccess:(NSString *)success;
+ (void)VTshowError:(NSString *)error;
+ (void)VTshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)VTshowMessage:(NSString *)message;

+ (void)VThideHUDForView:(UIView *)view;
+ (void)VThideHUD;

@end
