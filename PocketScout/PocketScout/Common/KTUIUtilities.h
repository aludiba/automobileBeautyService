//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KTUIUtilities : NSObject

+ (NSString *)KTformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)KTformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)KTdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)KTnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)KTlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)KTfilterHTMLTag:(NSString *)originalHTMLString;

+ (NSString *)KTunescapedHTMLString:(NSString *)originalHTMLString;

@end
