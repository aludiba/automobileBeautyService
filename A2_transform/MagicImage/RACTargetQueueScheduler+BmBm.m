#import "RACTargetQueueScheduler+BmBm.h"
@implementation RACTargetQueueScheduler (BmBm)
+ (BOOL)initWithNameTargetqueueBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
