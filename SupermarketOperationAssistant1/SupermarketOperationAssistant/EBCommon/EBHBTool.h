//
//  HBTool.h
//  communityVehicleManagement
//
//  Created by 褚红彪 on 2019/6/1.
//  Copyright © 2019年 hb. EBl rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EBHBTool : NSObject
//去掉字符串所有的换行和空格
+ (NSString *)EBremoveSpaceAndNewline:(NSString *)str;
//得到资源目录（新建的plist文件）
+ (NSString *)EBgetDataSourcePath:(NSString *)sourceName andType:(NSString *)fileType;
//得到documents目录
+ (NSString *)EBgetDocumentPath:(NSString *)fileName;
+ (NSString *)EBgetPreferredLanguage;
@end

NS_ASSUME_NONNULL_END
