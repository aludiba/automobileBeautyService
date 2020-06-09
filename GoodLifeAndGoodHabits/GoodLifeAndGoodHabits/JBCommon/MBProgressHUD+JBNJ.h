//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (JBNJ)
+ (void)JBshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)JBshowError:(NSString *)error toView:(UIView *)view;
+ (void)JBshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)JBshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)JBshowSuccess:(NSString *)success;
+ (void)JBshowError:(NSString *)error;
+ (void)JBshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)JBshowMessage:(NSString *)message;

+ (void)JBhideHUDForView:(UIView *)view;
+ (void)JBhideHUD;

@end
