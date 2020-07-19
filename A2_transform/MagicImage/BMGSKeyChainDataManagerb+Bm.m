#import "BMGSKeyChainDataManagerb+Bm.h"
@implementation BMGSKeyChainDataManagerb (Bm)
+ (BOOL)ESaveuuidBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)KreadUUIDBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)hdeleteUUIDBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
