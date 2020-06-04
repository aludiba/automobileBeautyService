//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. FBl rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBUIUtilities : NSObject

+ (NSString *)FBformattedStringFromTimeString:(NSString *)originFBString originFBFormat:(NSString *)originFBFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)FBformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)FBdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)FBnonnullStringForString:(NSString *)originFBString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)FBlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)FBfilterHTMLTag:(NSString *)originFBHTMLString;

+ (NSString *)FBunescapedHTMLString:(NSString *)originFBHTMLString;

@end
