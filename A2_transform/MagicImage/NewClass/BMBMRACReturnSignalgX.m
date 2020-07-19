#import "BMBMRACReturnSignalgX.h"
@implementation BMBMRACReturnSignalgX
+ (BOOL)tIsetnamebm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)uHnamebm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)BQreturnbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)RGsubscribebm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
