//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (YWKGANJ)
+ (void)YWKGAshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)YWKGAshowError:(NSString *)error toView:(UIView *)view;
+ (void)YWKGAshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)YWKGAshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)YWKGAshowSuccess:(NSString *)success;
+ (void)YWKGAshowError:(NSString *)error;
+ (void)YWKGAshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)YWKGAshowMessage:(NSString *)message;

+ (void)YWKGAhideHUDForView:(UIView *)view;
+ (void)YWKGAhideHUD;

@end
