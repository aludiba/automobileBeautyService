//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (KANJ)
+ (void)KAshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)KAshowError:(NSString *)error toView:(UIView *)view;
+ (void)KAshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)KAshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)KAshowSuccess:(NSString *)success;
+ (void)KAshowError:(NSString *)error;
+ (void)KAshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)KAshowMessage:(NSString *)message;

+ (void)KAhideHUDForView:(UIView *)view;
+ (void)KAhideHUD;

@end
