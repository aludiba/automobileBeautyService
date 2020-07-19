#import "RACIndexSetSequence+BmBm.h"
@implementation RACIndexSetSequence (BmBm)
+ (BOOL)sequenceWithIndexSetBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)sequenceWithIndexSetSequenceOffsetBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
