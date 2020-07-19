#import "BMGPUImageWhiteBalanceFilterf.h"
@implementation BMGPUImageWhiteBalanceFilterf
+ (BOOL)Minit:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fSettemperature:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)DSettint:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
