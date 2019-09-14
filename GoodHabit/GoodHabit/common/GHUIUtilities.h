//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GHUIUtilities : NSObject

+ (NSString *)GHformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)GHformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)GHdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)GHnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)GHlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)GHfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)GHunescapedHTMLString:(NSString *)originalHTMLString;

@end
