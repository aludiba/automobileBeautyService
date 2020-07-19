#import "RACSignal+TestingBmBm.h"
@implementation RACSignal (TestingBmBm)
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorTimeoutBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedTimeoutBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
