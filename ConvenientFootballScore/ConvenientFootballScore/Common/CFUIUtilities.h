//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CFUIUtilities : NSObject

+ (NSString *)CFformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)CFformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)CFdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)CFnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)CFlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)CFfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)CFunescapedHTMLString:(NSString *)originalHTMLString;

@end
