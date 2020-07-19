#import "BMBKMIBaseTypeVCX+Bm.h"
@implementation BMBKMIBaseTypeVCX (Bm)
+ (BOOL)eviewDidLoadBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cBKloginOutBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)BBKcreateCoinsViewBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)DBKloadUserInfoBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)mBktapactionBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mdeallocBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
