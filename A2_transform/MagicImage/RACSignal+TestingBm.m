#import "RACSignal+TestingBm.h"
@implementation RACSignal (TestingBm)
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorTimeoutBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedTimeoutBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
