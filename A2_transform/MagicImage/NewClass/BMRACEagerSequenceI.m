#import "BMRACEagerSequenceI.h"
@implementation BMRACEagerSequenceI
+ (BOOL)RReturnbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)ABindbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)AConcatbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)CEagersequencebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)gLazysequencebm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)aFoldrightwithstartreducebm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
