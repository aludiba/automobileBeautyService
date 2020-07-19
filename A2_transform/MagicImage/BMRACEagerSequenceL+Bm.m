#import "BMRACEagerSequenceL+Bm.h"
@implementation BMRACEagerSequenceL (Bm)
+ (BOOL)RReturnBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)MBindBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)kConcatBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)yeagerSequenceBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)XlazySequenceBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)HFoldrightwithstartnReduceBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
