#import "RACSignal+DebuggingBm.h"
@implementation RACSignal (DebuggingBm)
+ (BOOL)logAllBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)logNextBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)logErrorBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)logCompletedBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
