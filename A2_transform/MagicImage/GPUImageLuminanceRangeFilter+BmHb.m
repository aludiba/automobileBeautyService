#import "GPUImageLuminanceRangeFilter+BmHb.h"
@implementation GPUImageLuminanceRangeFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setRangeReductionFactorBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
