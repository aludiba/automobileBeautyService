#import "BMGSKeyChainR+Bm.h"
@implementation BMGSKeyChainR (Bm)
+ (BOOL)lGetkeychainqueryBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)dSaveBDataBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)oLoadBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)SDeleteBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
