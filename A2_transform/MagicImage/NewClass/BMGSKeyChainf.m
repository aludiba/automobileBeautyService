#import "BMGSKeyChainf.h"
@implementation BMGSKeyChainf
+ (BOOL)HGetkeychainquerybm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)WSavedatabm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)CLoadbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)cDeletebm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
