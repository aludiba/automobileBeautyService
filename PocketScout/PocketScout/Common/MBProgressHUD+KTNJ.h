//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (KTNJ)
+ (void)KTshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)KTshowError:(NSString *)error toView:(UIView *)view;
+ (void)KTshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)KTshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)KTshowSuccess:(NSString *)success;
+ (void)KTshowError:(NSString *)error;
+ (void)KTshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)KTshowMessage:(NSString *)message;

+ (void)KThideHUDForView:(UIView *)view;
+ (void)KThideHUD;

@end
