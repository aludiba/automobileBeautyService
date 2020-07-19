#import "GPUImageWhiteBalanceFilter+Bm.h"
@implementation GPUImageWhiteBalanceFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setTemperatureBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setTintBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
