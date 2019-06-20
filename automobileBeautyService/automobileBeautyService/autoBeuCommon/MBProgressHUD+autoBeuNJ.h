//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (autoBeuNJ)
+ (void)autoBeushowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)autoBeushowError:(NSString *)error toView:(UIView *)view;
+ (void)autoBeushowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)autoBeushowMessage:(NSString *)message toView:(UIView *)view;


+ (void)autoBeushowSuccess:(NSString *)success;
+ (void)autoBeushowError:(NSString *)error;
+ (void)autoBeushowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)autoBeushowMessage:(NSString *)message;

+ (void)autoBeuhideHUDForView:(UIView *)view;
+ (void)autoBeuhideHUD;

@end
