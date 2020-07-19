#import "RACSignal.h"
#import "RACErrorSignal.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACErrorSignal+Bm.h"

@interface RACErrorSignal (BmBm)
+ (BOOL)errorBmBm:(NSInteger)BM;
+ (BOOL)subscribeBmBm:(NSInteger)BM;

@end
