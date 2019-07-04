//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (stbaNJ)
+ (void)stbashowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)stbashowError:(NSString *)error toView:(UIView *)view;
+ (void)stbashowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)stbashowMessage:(NSString *)message toView:(UIView *)view;


+ (void)stbashowSuccess:(NSString *)success;
+ (void)stbashowError:(NSString *)error;
+ (void)stbashowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)stbashowMessage:(NSString *)message;

+ (void)stbahideHUDForView:(UIView *)view;
+ (void)stbahideHUD;

@end
