#import "RACSignal.h"
#import "RACErrorSignal.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"

@interface RACErrorSignal (Hb)
+ (BOOL)errorHb:(NSInteger)hb;
+ (BOOL)subscribeHb:(NSInteger)hb;

@end
