//
//  HVTool.h
//  communityVehicleManagement
//
//  Created by 褚红彪 on 2019/6/1.
//  Copyright © 2019年 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VTHVTool : NSObject
//得到资源目录（新建的plist文件）
+ (NSString *)getDataSourcePath:(NSString *)sourceName andType:(NSString *)fileType;
//得到documents目录
+ (NSString *)getDocumentPath:(NSString *)fileName;
+ (NSString *)getPreferredLanguage;
@end

NS_ASSUME_NONNULL_END
