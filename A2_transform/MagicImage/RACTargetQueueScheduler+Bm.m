#import "RACTargetQueueScheduler+Bm.h"
@implementation RACTargetQueueScheduler (Bm)
+ (BOOL)initWithNameTargetqueueBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
