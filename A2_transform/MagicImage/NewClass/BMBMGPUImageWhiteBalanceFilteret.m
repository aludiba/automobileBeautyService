#import "BMBMGPUImageWhiteBalanceFilteret.h"
@implementation BMBMGPUImageWhiteBalanceFilteret
+ (BOOL)OAinitbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ZPsettemperaturebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)rYsettintbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
