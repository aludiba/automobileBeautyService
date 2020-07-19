#import "BMGPUImageWhiteBalanceFilterZ.h"
@implementation BMGPUImageWhiteBalanceFilterZ
+ (BOOL)gInitbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)ESettemperaturebm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ZSettintbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
