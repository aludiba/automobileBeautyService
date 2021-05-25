//
//  MPTool.h
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MPTool : NSObject

+ (CGFloat)MPcurrentIpBottombarheight;

//跳转应用设置提示
+ (void)MPApplicationSettingsAlertTitle:(NSString *)MPtitle message:(NSString *)MPmessage;

@end

NS_ASSUME_NONNULL_END
