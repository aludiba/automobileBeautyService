#import "RACCommand+BmBm.h"
@implementation RACCommand (BmBm)
+ (BOOL)allowsConcurrentExecutionBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setAllowsConcurrentExecutionBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)initWithSignalBlockBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initWithEnabledSignalblockBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)executeBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
