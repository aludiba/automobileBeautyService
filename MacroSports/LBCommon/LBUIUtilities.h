//
//  UIUtilities.h
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. LBl rights reserved.
//

#import <Foundation/Foundation.h>

@interface LBUIUtilities : NSObject

+ (NSString *)LBformattedStringFromTimeString:(NSString *)originLBString originLBFormat:(NSString *)originLBFormat targetFormat:(NSString *)targetFormat;

+ (NSString *)LBformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format;

+ (NSDate *)LBdateFromString:(NSString *)dateString formate:(NSString*)formate;

+ (NSString *)LBnonnullStringForString:(NSString *)originLBString withPlaceholder:(NSString *)placeholder;


/**
 将字节大小转换为易读的文件大小字符串形式

 @param size 字节大小
 @return 易读的文件大小字符串形式
 */
+ (NSString *)LBlegibleSizeStringWithByteSize:(NSUInteger)size;


+ (NSString *)LBfilterHTMLTag:(NSString *)originLBHTMLString;

+ (NSString *)LBunescapedHTMLString:(NSString *)originLBHTMLString;

@end
