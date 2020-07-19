#import "BMRACEagerSequenceL.h"
@implementation BMRACEagerSequenceL
+ (BOOL)RReturn:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)MBind:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)kConcat:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)yeagerSequence:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)XlazySequence:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)HFoldrightwithstartnReduce:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
