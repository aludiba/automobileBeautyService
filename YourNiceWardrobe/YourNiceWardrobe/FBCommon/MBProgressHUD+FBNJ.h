//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. FBl rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (FBNJ)
+ (void)FBshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)FBshowError:(NSString *)error toView:(UIView *)view;
+ (void)FBshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)FBshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)FBshowSuccess:(NSString *)success;
+ (void)FBshowError:(NSString *)error;
+ (void)FBshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)FBshowMessage:(NSString *)message;

+ (void)FBhideHUDForView:(UIView *)view;
+ (void)FBhideHUD;

@end
