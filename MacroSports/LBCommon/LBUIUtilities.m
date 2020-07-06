//
//  UIUtilities.m
//  Matrix_Customer
//
//  Created by by on 2018/7/16.
//  Copyright © 2018年 国泰君安. LBl rights reserved.
//

#import "LBUIUtilities.h"

@implementation LBUIUtilities

+ (NSString *)LBformattedStringFromTimeString:(NSString *)originalString originalFormat:(NSString *)originalFormat targetFormat:(NSString *)targetFormat {
    if (originalString == nil || [originalString isEqualToString:@""]) {
        return originalString;
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = originalFormat;
    NSDate *date = [dateFormatter dateFromString:originalString];
    dateFormatter.dateFormat = targetFormat;
    NSString *formattedString = [dateFormatter stringFromDate:date];
    if (!formattedString) {
        formattedString = @"";
    }
    return formattedString;
}

+ (NSString *)LBformattedTimeStringWithDate:(NSDate *)date format:(NSString *)format {
    if (!date) {
        return nil;
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = format;
    return [dateFormatter stringFromDate:date];
}

+ (NSDate *)LBdateFromString:(NSString *)dateString formate:(NSString*)formate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:formate];
    NSDate *date = [dateFormatter dateFromString:dateString];
    return date;
}

+ (NSString *)LBnonnullStringForString:(NSString *)originalString withPlaceholder:(NSString *)placeholder {
    if (!originalString || [originalString isEqualToString:@""]) {
        return placeholder;
    } else {
        return originalString;
    }
}

+ (NSString *)LBlegibleSizeStringWithByteSize:(NSUInteger)size {
    if (size < 1024) {
        return [NSString stringWithFormat:@"%ldB",size];
    } else if (size < 1024 * 1024) {
        return [NSString stringWithFormat:@"%.2fK",size / 1024.0];
    } else if (size < 1024 * 1024 * 1024) {
        return [NSString stringWithFormat:@"%.2fM",size / (1024 * 1024.0)];
    } else {
        return [NSString stringWithFormat:@"%.2G",size / (1024 * 1024 * 1024.0)];
    }
}

+ (NSString *)LBfilterHTMLTag:(NSString *)originalHTMLString {
    if (originalHTMLString == nil || [originalHTMLString isEqualToString:@""]) {
        return originalHTMLString;
    }
    NSScanner *scanner = [NSScanner scannerWithString:originalHTMLString];
    NSString *text = nil;
    
    //过滤样式与脚本
    while ([scanner isAtEnd] == NO) {
        [scanner scanUpToString:@"<style" intoString:NULL];
        [scanner scanUpToString:@"/style>" intoString:&text];
        originalHTMLString = [originalHTMLString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@/style>",text] withString:@""];
        [scanner scanUpToString:@"<script" intoString:NULL];
        [scanner scanUpToString:@"/script>" intoString:&text];
        originalHTMLString = [originalHTMLString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@/script>",text] withString:@""];
    }
    
    
    scanner = [NSScanner scannerWithString:originalHTMLString];
    while ([scanner isAtEnd] == NO) {
        [scanner scanUpToString:@"<" intoString:NULL];
        [scanner scanUpToString:@">" intoString:&text];
        originalHTMLString = [originalHTMLString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>",text] withString:@""];
    }
    
    return originalHTMLString;
}

+ (NSString *)LBunescapedHTMLString:(NSString *)originalHTMLString {
    if (!originalHTMLString || [originalHTMLString isEqualToString:@""]) {
        return originalHTMLString;
    }
    
    if ([originalHTMLString containsString:@"&"]) {
        NSDictionary *htmlEscapeDic = @{@"&nbsp;":@" ",
                                        @"&lt;":@"<",
                                        @"&gt;":@">",
                                        @"&amp;":@"&",
                                        @"&quot;":@"\"",
                                        @"&apos;":@"'",
                                        @"&cent;":@"￠",
                                        @"&pound;":@"£",
                                        @"&yen;":@"¥",
                                        @"&euro;":@"€",
                                        @"&copy;":@"©",
                                        @"&reg;":@"®",
                                        @"&trade;":@"™",
                                        @"&times;":@"x",
                                        @"&divide;":@"÷",
                                        };
        for (NSString *key in htmlEscapeDic) {
            originalHTMLString = [originalHTMLString stringByReplacingOccurrencesOfString:key withString:htmlEscapeDic[key]];
        }
    }
    return originalHTMLString;
}
@end
