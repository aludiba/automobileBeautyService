#import "RACArraySequence+Bm.h"
@implementation RACArraySequence (Bm)
+ (BOOL)sequenceWithArrayOffsetBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)arrayBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
