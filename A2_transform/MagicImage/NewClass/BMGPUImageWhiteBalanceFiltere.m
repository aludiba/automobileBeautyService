#import "BMGPUImageWhiteBalanceFiltere.h"
@implementation BMGPUImageWhiteBalanceFiltere
+ (BOOL)AInitbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)PSettemperaturebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)YSettintbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
