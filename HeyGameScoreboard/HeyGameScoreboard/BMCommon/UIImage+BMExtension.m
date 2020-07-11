//
//  UIImage+BMExtension.m
//  HeyGameScoreboard
//
//  Created by user on 2020/7/11.
//  Copyright © 2020 Hey. All rights reserved.
//

#import "UIImage+BMExtension.h"

@implementation UIImage (BMExtension)
+ (UIImage *)BMrendImageWithView:(UIView *)view{
    
//      1.开始位图上下文
    UIGraphicsBeginImageContext(view.frame.size);
//      2.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
//    3.截图
    [view.layer renderInContext:ctx];
//    4.获取图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
//    5.关闭上下文
    UIGraphicsEndImageContext() ;
    
    return newImage;
    
}
@end
