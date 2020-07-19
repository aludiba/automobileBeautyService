#import "BMBMRACEventpm.h"
@implementation BMBMRACEventpm
+ (BOOL)KJisfinishedbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)vXerrorbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)HPvaluebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)iLcompletedeventbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)xHeventwitherrorbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)NAeventwithvaluebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)JFinitwitheventtypeiobjectbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)mEcopywithzonebm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)HAdescriptionbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)CVhashbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)zIisequalbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
