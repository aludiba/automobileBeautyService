#import "GPUImageLowPassFilter+BmBmBm.h"
@implementation GPUImageLowPassFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setFilterStrengthBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)filterStrengthBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)addTargetAttexturelocationBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
