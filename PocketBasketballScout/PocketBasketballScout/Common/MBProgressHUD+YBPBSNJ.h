//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (YBPBSNJ)
+ (void)YBPBSshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)YBPBSshowError:(NSString *)error toView:(UIView *)view;
+ (void)YBPBSshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)YBPBSshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)YBPBSshowSuccess:(NSString *)success;
+ (void)YBPBSshowError:(NSString *)error;
+ (void)YBPBSshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)YBPBSshowMessage:(NSString *)message;

+ (void)YBPBShideHUDForView:(UIView *)view;
+ (void)YBPBShideHUD;

@end
