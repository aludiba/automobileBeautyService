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
@end
