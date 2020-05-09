//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. EBl rights reserved.
//

#import <Foundation/Foundation.h>

@interface EBUIUtilities : NSObject

+ (NSString *)EBformattedStringFromTimeString:(NSString *)originEBString originEBFormat:(NSString *)originEBFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)EBformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)EBdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)EBnonnullStringForString:(NSString *)originEBString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)EBlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)EBfilterHTMLTag:(NSString *)originEBHTMLString;

+ (NSString *)EBunescapedHTMLString:(NSString *)originEBHTMLString;

@end
