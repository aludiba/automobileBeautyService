//
//  MBProgressHUD+NJ.m
//
//  Created by 李南江 on 14-5-5.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "MBProgressHUD+SDNJ.h"

@implementation MBProgressHUD (SDNJ)
#pragma mark 显示信息
+ (void)SDshow:(NSString *)text icon:(NSString *)icon view:(UIView *)view
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
+ (void)SDshowError:(NSString *)error toView:(UIView *)view{
    [self SDshow:error icon:@"error.png" view:view];
}

+ (void)SDshowSuccess:(NSString *)success toView:(UIView *)view
{
    [self SDshow:success icon:@"success.png" view:view];
}

+ (void)SDshowReminderText:(NSString *)reminderText toView:(UIView *)view {
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
+ (MBProgressHUD *)SDshowMessage:(NSString *)message toView:(UIView *)view {
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

+ (void)SDshowSuccess:(NSString *)success
{
    [self SDshowSuccess:success toView:nil];
}

+ (void)SDshowError:(NSString *)error
{
    [self SDshowError:error toView:nil];
}

+ (void)SDshowReminderText:(NSString *)reminderText {
    [self SDshowReminderText:reminderText toView:nil];
}

+ (MBProgressHUD *)auto4BeushowMessage:(NSString *)message
{
    return [self SDshowMessage:message toView:nil];
}

+ (void)SDhideHUDForView:(UIView *)view
{
    [self hideHUDForView:view animated:YES];
}

+ (void)SDhideHUD
{
    [self SDhideHUDForView:nil];
}
@end
