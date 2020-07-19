#import "BMRACEagerSequenceL+BmBm.h"
@implementation BMRACEagerSequenceL (BmBm)
+ (BOOL)RReturnBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)MBindBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)kConcatBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)yeagerSequenceBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)XlazySequenceBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)HFoldrightwithstartnReduceBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
