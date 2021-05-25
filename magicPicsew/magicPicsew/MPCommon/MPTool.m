//
//  MPTool.m
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import "MPTool.h"
@interface MPTool()

@end
@implementation MPTool

+ (CGFloat)MPcurrentIpBottombarheight{
    CGFloat bottombarheight;
    if (@available(iOS 11.0, *)){
        bottombarheight = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom;
    }else{
        bottombarheight = 0;
    }
    return bottombarheight;
}

+ (void)MPApplicationSettingsAlertTitle:(NSString *)MPtitle message:(NSString *)MPmessage{
    UIAlertController *MPAlertVC = [UIAlertController alertControllerWithTitle:MPtitle message:MPmessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *MPActionCancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *MPActionSet = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString] options:@{} completionHandler:^(BOOL success) {
                        
        }];
    }];
    [MPAlertVC addAction:MPActionCancel];
    [MPAlertVC addAction:MPActionSet];
    [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:MPAlertVC animated:YES completion:^{
                
    }];
}

@end
