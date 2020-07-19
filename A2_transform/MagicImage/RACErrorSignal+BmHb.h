#import "RACSignal.h"
#import "RACErrorSignal.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACErrorSignal+Bm.h"

@interface RACErrorSignal (BmHb)
+ (BOOL)errorBmHb:(NSInteger)hb;
+ (BOOL)subscribeBmHb:(NSInteger)hb;

@end
