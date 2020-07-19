#import "GPUImageWhiteBalanceFilter+BmBmBm.h"
@implementation GPUImageWhiteBalanceFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setTemperatureBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setTintBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
