#import "RACDynamicSequence+BmBm.h"
@implementation RACDynamicSequence (BmBm)
+ (BOOL)sequenceWithHeadBlockTailblockBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sequenceWithLazyDependencyHeadblockTailblockBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
