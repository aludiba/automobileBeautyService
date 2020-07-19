#import "GPUImageWhiteBalanceFilter+BmBm.h"
@implementation GPUImageWhiteBalanceFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setTemperatureBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setTintBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
