#import <Foundation/Foundation.h>
#import "RACEvent.h"

@interface RACEvent (Bm)
+ (BOOL)isFinishedBm:(NSInteger)BM;
+ (BOOL)errorBm:(NSInteger)BM;
+ (BOOL)valueBm:(NSInteger)BM;
+ (BOOL)completedEventBm:(NSInteger)BM;
+ (BOOL)eventWithErrorBm:(NSInteger)BM;
+ (BOOL)eventWithValueBm:(NSInteger)BM;
+ (BOOL)initWithEventTypeObjectBm:(NSInteger)BM;
+ (BOOL)copyWithZoneBm:(NSInteger)BM;
+ (BOOL)descriptionBm:(NSInteger)BM;
+ (BOOL)hashBm:(NSInteger)BM;
+ (BOOL)isEqualBm:(NSInteger)BM;

@end
