//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. BCl rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCUIUtilities : NSObject

+ (NSString *)BCformattedStringFromTimeString:(NSString *)originBCString originBCFormat:(NSString *)originBCFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)BCformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)BCdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)BCnonnullStringForString:(NSString *)originBCString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)BClegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)BCfilterHTMLTag:(NSString *)originBCHTMLString;

+ (NSString *)BCunescapedHTMLString:(NSString *)originBCHTMLString;

@end
