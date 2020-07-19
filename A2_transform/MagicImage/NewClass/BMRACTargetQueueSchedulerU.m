#import "BMRACTargetQueueSchedulerU.h"
@implementation BMRACTargetQueueSchedulerU
+ (BOOL)vInitwithnameoTargetqueue:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
