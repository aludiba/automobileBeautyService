//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (WANJ)
+ (void)WAshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)WAshowError:(NSString *)error toView:(UIView *)view;
+ (void)WAshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)WAshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)WAshowSuccess:(NSString *)success;
+ (void)WAshowError:(NSString *)error;
+ (void)WAshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)WAshowMessage:(NSString *)message;

+ (void)WAhideHUDForView:(UIView *)view;
+ (void)WAhideHUD;

@end
