#import "RACTargetQueueScheduler+Hb.h"
@implementation RACTargetQueueScheduler (Hb)
+ (BOOL)initWithNameTargetqueueHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
