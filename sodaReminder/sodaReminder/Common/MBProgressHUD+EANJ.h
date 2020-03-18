//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (EANJ)
+ (void)EAshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)EAshowError:(NSString *)error toView:(UIView *)view;
+ (void)EAshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)EAshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)EAshowSuccess:(NSString *)success;
+ (void)EAshowError:(NSString *)error;
+ (void)EAshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)EAshowMessage:(NSString *)message;

+ (void)EAhideHUDForView:(UIView *)view;
+ (void)EAhideHUD;

@end
