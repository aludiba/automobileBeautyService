//
//  HBTool.m
//  communityVehicleManagement
//
//  Created by 褚红彪 on 2019/6/1.
//  Copyright © 2019年 hb. All rights reserved.
//

#import "GHHBTool.h"

@implementation GHHBTool
//得到资源目录（新建的plist文件）
+ (NSString *)getDataSourcePath:(NSString *) sourceName andType:(NSString *) fileType{
    NSString *path = [[NSBundle mainBundle] pathForResource:sourceName ofType:fileType];
    return path;
}
//得到documents目录
+ (NSString *)getDocumentPath:(NSString *)fileName{
    //两种获取document路径的方式
    //    NSString *documents = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documents = [paths objectAtIndex:0];
    NSString *path = [documents stringByAppendingPathComponent:fileName];
    return path;
}
//压缩图片到指定大小
+ (NSData *)compressImage:(UIImage *)image toByte:(NSUInteger) maxLength {
    // Compress by quality
    CGFloat compression = 1;
    NSData *data = UIImageJPEGRepresentation(image, compression);
    if (data.length < maxLength) return data;
    CGFloat max = 1;
    CGFloat min = 0;
    for (int i = 0; i < 6; ++i) {
        //        dispatch_async(dispatch_get_global_queue(0, 0), ^{
        compression = (max + min) / 2;
        data = UIImageJPEGRepresentation(image, compression);
        if (data.length < maxLength * 0.9) {
            min = compression;
        }else if(data.length > maxLength) {
            max = compression;
        }else {
            break;
        }
        //        });
    }
    __block UIImage *resultImage = [UIImage imageWithData:data];
    if (data.length < maxLength) return data;
    
    // Compress by size
    __block NSUInteger lastDataLength = 0;
    while (data.length > maxLength && data.length != lastDataLength) {
        //        dispatch_async(dispatch_get_global_queue(0, 0), ^{
        lastDataLength = data.length;
        CGFloat ratio = (CGFloat)maxLength / data.length;
        CGSize size = CGSizeMake((NSUInteger)(resultImage.size.width * sqrtf(ratio)),
                                 (NSUInteger)(resultImage.size.height * sqrtf(ratio))); // Use NSUInteger to prevent white blank
        UIGraphicsBeginImageContext(size);
        [resultImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
        resultImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        data = UIImageJPEGRepresentation(resultImage, compression);
        
    }
    return data;
}
+ (BOOL)isFirstLoad{

NSString *currentVersion = [[[NSBundle mainBundle] infoDictionary]

objectForKey:@"CFBundleShortVersionString"];

NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

NSString *lastRunVersion = [defaults objectForKey:LAST_RUN_VERSION_KEY];

if (!lastRunVersion) {

[defaults setObject:currentVersion forKey:LAST_RUN_VERSION_KEY];

return YES;

}

else if (![lastRunVersion isEqualToString:currentVersion]) {

[defaults setObject:currentVersion forKey:LAST_RUN_VERSION_KEY];

return YES;

}

return NO;

}
@end
