//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface mag5sUIUtilities : NSObject

+ (NSString *)mag5sformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)mag5sformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)mag5sdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)mag5snonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)mag5slegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)mag5sfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)mag5sunescapedHTMLString:(NSString *)originalHTMLString;

@end