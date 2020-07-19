#import "RACSignal+DebuggingBmBm.h"
@implementation RACSignal (DebuggingBmBm)
+ (BOOL)logAllBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)logNextBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)logErrorBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)logCompletedBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
