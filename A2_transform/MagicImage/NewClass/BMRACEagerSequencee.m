#import "BMRACEagerSequencee.h"
@implementation BMRACEagerSequencee
+ (BOOL)TReturn:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)pBind:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)kConcat:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)neagerSequence:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)VlazySequence:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)cFoldrightwithstartUReduce:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
