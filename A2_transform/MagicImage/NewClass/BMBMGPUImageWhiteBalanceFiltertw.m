#import "BMBMGPUImageWhiteBalanceFiltertw.h"
@implementation BMBMGPUImageWhiteBalanceFiltertw
+ (BOOL)dHinit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)KJsettemperature:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)nTsettint:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
