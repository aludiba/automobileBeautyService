#import "RACIndexSetSequence+Bm.h"
@implementation RACIndexSetSequence (Bm)
+ (BOOL)sequenceWithIndexSetBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)sequenceWithIndexSetSequenceOffsetBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
