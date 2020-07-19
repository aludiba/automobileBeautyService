#import "GPUImagePerlinNoiseFilter+BmBm.h"
@implementation GPUImagePerlinNoiseFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setScaleBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setColorStartBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setColorFinishBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
