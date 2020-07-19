#import "RACSignal+DebuggingBmBmBm.h"
@implementation RACSignal (DebuggingBmBmBm)
+ (BOOL)logAllBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)logNextBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)logErrorBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)logCompletedBmBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
