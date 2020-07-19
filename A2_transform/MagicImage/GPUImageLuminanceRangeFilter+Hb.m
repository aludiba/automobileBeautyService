#import "GPUImageLuminanceRangeFilter+Hb.h"
@implementation GPUImageLuminanceRangeFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setRangeReductionFactorHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
