//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (WBYBKOKNJ)
+ (void)WBYBKOKshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)WBYBKOKshowError:(NSString *)error toView:(UIView *)view;
+ (void)WBYBKOKshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)WBYBKOKshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)WBYBKOKshowSuccess:(NSString *)success;
+ (void)WBYBKOKshowError:(NSString *)error;
+ (void)WBYBKOKshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)WBYBKOKshowMessage:(NSString *)message;

+ (void)WBYBKOKhideHUDForView:(UIView *)view;
+ (void)WBYBKOKhideHUD;

@end
