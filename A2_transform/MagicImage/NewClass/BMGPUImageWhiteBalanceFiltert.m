#import "BMGPUImageWhiteBalanceFiltert.h"
@implementation BMGPUImageWhiteBalanceFiltert
+ (BOOL)Hinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)jSettemperature:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)tSettint:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
