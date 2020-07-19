#import "RACEagerSequence+Bm.h"
@implementation RACEagerSequence (Bm)
+ (BOOL)returnBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)bindBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)concatBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)eagerSequenceBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)lazySequenceBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)foldRightWithStartReduceBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
