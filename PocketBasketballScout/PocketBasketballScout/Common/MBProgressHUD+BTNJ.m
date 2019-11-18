//
//  MBProgressHUD+NJ.m
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD+BTNJ.h"

@implementation MBProgressHUD (BTNJ)
#pragma mark 显示信息
+ (void)BTshow:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    
    //[[UIApplication sharedApplication].windows lastObject]
    if (view == nil) view =[[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.numberOfLines = 2;
    hud.label.text = text;
    hud.contentColor = [UIColor whiteColor];
    //设置内容背景
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.0];
}

#pragma mark 显示错误信息
+ (void)BTshowError:(NSString *)error toView:(UIView *)view{
    [self BTshow:error icon:@"error.png" view:view];
}

+ (void)BTshowSuccess:(NSString *)success toView:(UIView *)view
{
    [self BTshow:success icon:@"success.png" view:view];
}

+ (void)BTshowReminderText:(NSString *)reminderText toView:(UIView *)view {
    if (view == nil) view =[[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = reminderText;
    hud.label.numberOfLines = 0;
    hud.contentColor = [UIColor whiteColor];
    // 再设置模式
    hud.mode = MBProgressHUDModeText;
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.0];
}

#pragma mark 显示一些信息
+ (MBProgressHUD *)BTshowMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.contentColor = [UIColor whiteColor];
    //设置内容背景
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    hud.dimBackground = YES;
    return hud;
}

+ (void)BTshowSuccess:(NSString *)success
{
    [self BTshowSuccess:success toView:nil];
}

+ (void)BTshowError:(NSString *)error
{
    [self BTshowError:error toView:nil];
}

+ (void)BTshowReminderText:(NSString *)reminderText {
    [self BTshowReminderText:reminderText toView:nil];
}

+ (MBProgressHUD *)auto4BeushowMessage:(NSString *)message
{
    return [self BTshowMessage:message toView:nil];
}

+ (void)BThideHUDForView:(UIView *)view
{
    [self hideHUDForView:view animated:YES];
}

+ (void)BThideHUD
{
    [self BThideHUDForView:nil];
}
@end
