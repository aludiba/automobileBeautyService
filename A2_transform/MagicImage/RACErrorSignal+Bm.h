#import "RACSignal.h"
#import "RACErrorSignal.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"

@interface RACErrorSignal (Bm)
+ (BOOL)errorBm:(NSInteger)BM;
+ (BOOL)subscribeBm:(NSInteger)BM;

@end
