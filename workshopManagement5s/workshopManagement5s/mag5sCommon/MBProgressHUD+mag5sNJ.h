//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (mag5sNJ)
+ (void)mag5sshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)mag5sshowError:(NSString *)error toView:(UIView *)view;
+ (void)mag5sshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)mag5sshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)mag5sshowSuccess:(NSString *)success;
+ (void)mag5sshowError:(NSString *)error;
+ (void)mag5sshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)mag5sshowMessage:(NSString *)message;

+ (void)mag5shideHUDForView:(UIView *)view;
+ (void)mag5shideHUD;

@end
