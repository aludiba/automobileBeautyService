#import "BMBMRACMulticastConnectionsx.h"
@implementation BMBMRACMulticastConnectionsx
+ (BOOL)DEinitwithsourcesignalpsubjectbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)YSconnectbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)MWautoconnectbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
