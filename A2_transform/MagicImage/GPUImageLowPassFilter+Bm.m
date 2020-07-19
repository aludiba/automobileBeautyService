#import "GPUImageLowPassFilter+Bm.h"
@implementation GPUImageLowPassFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setFilterStrengthBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)filterStrengthBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)addTargetAttexturelocationBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
