//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (PHNJ)
+ (void)PHshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)PHshowError:(NSString *)error toView:(UIView *)view;
+ (void)PHshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)PHshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)PHshowSuccess:(NSString *)success;
+ (void)PHshowError:(NSString *)error;
+ (void)PHshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)PHshowMessage:(NSString *)message;

+ (void)PHhideHUDForView:(UIView *)view;
+ (void)PHhideHUD;

@end
