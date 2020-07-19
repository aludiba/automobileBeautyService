#import "RACIndexSetSequence+BmBmBm.h"
@implementation RACIndexSetSequence (BmBmBm)
+ (BOOL)sequenceWithIndexSetBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sequenceWithIndexSetSequenceOffsetBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)headBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)tailBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)descriptionBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
