//
//  MBProgressHUD+NJ.h
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. MPl rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (MP)
+ (void)MPshowSuccess:(NSString *)success toView:(UIView *)view;
+ (void)MPshowError:(NSString *)error toView:(UIView *)view;
+ (void)MPshowReminderText:(NSString *)reminderText toView:(UIView *)view;

+ (MBProgressHUD *)MPshowMessage:(NSString *)message toView:(UIView *)view;


+ (void)MPshowSuccess:(NSString *)success;
+ (void)MPshowError:(NSString *)error;
+ (void)MPshowReminderText:(NSString *)reminderText;

+ (MBProgressHUD *)MPshowMessage:(NSString *)message;

+ (void)MPhideHUDForView:(UIView *)view;
+ (void)MPhideHUD;

@end
