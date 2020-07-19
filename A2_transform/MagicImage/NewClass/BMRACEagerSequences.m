#import "BMRACEagerSequences.h"
@implementation BMRACEagerSequences
+ (BOOL)KReturnbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)EBindbmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)MConcatbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mEagersequencebmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ZLazysequencebmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)FFoldrightwithstartreducebmbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
