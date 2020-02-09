//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WBYBKOKUIUtilities : NSObject

+ (NSString *)WBYBKOKformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)WBYBKOKformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)WBYBKOKdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)WBYBKOKnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)WBYBKOKlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)WBYBKOKfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)WBYBKOKunescapedHTMLString:(NSString *)originalHTMLString;

@end
