#import "RACStringSequence+Bm.h"
@implementation RACStringSequence (Bm)
+ (BOOL)sequenceWithStringOffsetBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)arrayBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
