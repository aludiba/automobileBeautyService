#import "RACSignal.h"
#import "RACErrorSignal.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACErrorSignal+Bm.h"
#import "RACErrorSignal+BmBm.h"

@interface RACErrorSignal (BmBmHb)
+ (BOOL)errorBmBmHb:(NSInteger)hb;
+ (BOOL)subscribeBmBmHb:(NSInteger)hb;

@end
