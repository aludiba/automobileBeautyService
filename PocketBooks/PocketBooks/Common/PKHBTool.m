//
//  HBTool.m
//  communityVehicleManagement
//
//  Created by 褚红彪 on 2019/6/1.
//  Copyright © 2019年 hb. All rights reserved.
//

#import "PKHBTool.h"

@implementation PKHBTool
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
@end
