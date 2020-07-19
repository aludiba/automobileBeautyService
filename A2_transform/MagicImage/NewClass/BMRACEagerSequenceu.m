#import "BMRACEagerSequenceu.h"
@implementation BMRACEagerSequenceu
+ (BOOL)DReturnbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)cBindbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)GConcatbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)KEagersequencebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)FLazysequencebm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)JFoldrightwithstartreducebm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
