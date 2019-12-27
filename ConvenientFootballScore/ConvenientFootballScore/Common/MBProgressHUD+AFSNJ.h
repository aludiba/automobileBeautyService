//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (AFSNJ)
+ (void)AFSshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)AFSshowError:(NSString *)error toView:(UIView *)view;
+ (void)AFSshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)AFSshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)AFSshowSuccess:(NSString *)success;
+ (void)AFSshowError:(NSString *)error;
+ (void)AFSshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)AFSshowMessage:(NSString *)message;

+ (void)AFShideHUDForView:(UIView *)view;
+ (void)AFShideHUD;

@end
