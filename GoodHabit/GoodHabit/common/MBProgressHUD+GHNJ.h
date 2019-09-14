//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (GHNJ)
+ (void)GHshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)GHshowError:(NSString *)error toView:(UIView *)view;
+ (void)GHshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)GHshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)GHshowSuccess:(NSString *)success;
+ (void)GHshowError:(NSString *)error;
+ (void)GHshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)GHshowMessage:(NSString *)message;

+ (void)GHhideHUDForView:(UIView *)view;
+ (void)GHhideHUD;

@end
