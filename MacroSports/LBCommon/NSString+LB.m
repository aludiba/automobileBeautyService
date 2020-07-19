//
//  NSString+LB.m
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import "NSString+LB.h"

@implementation NSString (LB)
- (NSString *)LBremoveSpaceAndNewline{
    NSString *temp = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return temp;
}
@end
