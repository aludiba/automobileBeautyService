#import "BMRACMulticastConnectiono+Bm.h"
@implementation BMRACMulticastConnectiono (Bm)
+ (BOOL)iInitwithsourcesignalsubjectbmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)JConnectbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)EAutoconnectbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
