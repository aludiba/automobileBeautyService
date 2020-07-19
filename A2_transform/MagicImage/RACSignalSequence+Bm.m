#import "RACSignalSequence+Bm.h"
@implementation RACSignalSequence (Bm)
+ (BOOL)sequenceWithSignalBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)arrayBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
