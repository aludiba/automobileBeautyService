//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (ZLNJ)
+ (void)ZLshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)ZLshowError:(NSString *)error toView:(UIView *)view;
+ (void)ZLshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)ZLshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)ZLshowSuccess:(NSString *)success;
+ (void)ZLshowError:(NSString *)error;
+ (void)ZLshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)ZLshowMessage:(NSString *)message;

+ (void)ZLhideHUDForView:(UIView *)view;
+ (void)ZLhideHUD;

@end
