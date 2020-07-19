#import "RACDynamicSequence+Bm.h"
@implementation RACDynamicSequence (Bm)
+ (BOOL)sequenceWithHeadBlockTailblockBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
