//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (MFNJ)
+ (void)MFshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)MFshowError:(NSString *)error toView:(UIView *)view;
+ (void)MFshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)MFshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)MFshowSuccess:(NSString *)success;
+ (void)MFshowError:(NSString *)error;
+ (void)MFshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)MFshowMessage:(NSString *)message;

+ (void)MFhideHUDForView:(UIView *)view;
+ (void)MFhideHUD;

@end
