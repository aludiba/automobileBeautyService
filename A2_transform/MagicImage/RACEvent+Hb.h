#import <Foundation/Foundation.h>
#import "RACEvent.h"

@interface RACEvent (Hb)
+ (BOOL)isFinishedHb:(NSInteger)hb;
+ (BOOL)errorHb:(NSInteger)hb;
+ (BOOL)valueHb:(NSInteger)hb;
+ (BOOL)completedEventHb:(NSInteger)hb;
+ (BOOL)eventWithErrorHb:(NSInteger)hb;
+ (BOOL)eventWithValueHb:(NSInteger)hb;
+ (BOOL)initWithEventTypeObjectHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;
+ (BOOL)hashHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;

@end
