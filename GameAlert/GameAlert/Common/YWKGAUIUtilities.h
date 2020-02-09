//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YWKGAUIUtilities : NSObject

+ (NSString *)YWKGAformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)YWKGAformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)YWKGAdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)YWKGAnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)YWKGAlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)YWKGAfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)YWKGAunescapedHTMLString:(NSString *)originalHTMLString;

@end
