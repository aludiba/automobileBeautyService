//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. BMl rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMUIUtilities : NSObject

+ (NSString *)BMformattedStringFromTimeString:(NSString *)originBMString originBMFormat:(NSString *)originBMFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)BMformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)BMdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)BMnonnullStringForString:(NSString *)originBMString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)BMlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)BMfilterHTMLTag:(NSString *)originBMHTMLString;

+ (NSString *)BMunescapedHTMLString:(NSString *)originBMHTMLString;

@end
