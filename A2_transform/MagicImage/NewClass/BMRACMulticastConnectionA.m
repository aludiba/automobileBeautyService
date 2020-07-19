#import "BMRACMulticastConnectionA.h"
@implementation BMRACMulticastConnectionA
+ (BOOL)LInitwithsourcesignalsubjectbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)bConnectbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mAutoconnectbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
