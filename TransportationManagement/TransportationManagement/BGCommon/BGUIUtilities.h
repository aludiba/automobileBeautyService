//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BGUIUtilities : NSObject

+ (NSString *)BGformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)BGformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)BGdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)BGnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)BGlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)BGfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)BGunescapedHTMLString:(NSString *)originalHTMLString;

@end
