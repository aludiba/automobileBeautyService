#import "RACTargetQueueScheduler+BmHb.h"
@implementation RACTargetQueueScheduler (BmHb)
+ (BOOL)initWithNameTargetqueueBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
