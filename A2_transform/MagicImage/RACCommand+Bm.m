#import "RACCommand+Bm.h"
@implementation RACCommand (Bm)
+ (BOOL)allowsConcurrentExecutionBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setAllowsConcurrentExecutionBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initWithSignalBlockBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)initWithEnabledSignalblockBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)executeBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
