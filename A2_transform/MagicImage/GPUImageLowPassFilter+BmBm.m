#import "GPUImageLowPassFilter+BmBm.h"
@implementation GPUImageLowPassFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setFilterStrengthBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)filterStrengthBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)addTargetAttexturelocationBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
