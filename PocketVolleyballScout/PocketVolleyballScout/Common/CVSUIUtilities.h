//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CVSUIUtilities : NSObject

+ (NSString *)CVSformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)CVSformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)CVSdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)CVSnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)CVSlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)CVSfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)CVSunescapedHTMLString:(NSString *)originalHTMLString;

@end
