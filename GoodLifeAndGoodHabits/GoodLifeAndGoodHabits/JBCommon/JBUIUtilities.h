//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JBUIUtilities : NSObject

+ (NSString *)JBformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)JBformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)JBdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)JBnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)JBlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)JBfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)JBunescapedHTMLString:(NSString *)originalHTMLString;

@end
