#import "GPUImagePerlinNoiseFilter+Bm.h"
@implementation GPUImagePerlinNoiseFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setScaleBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setColorStartBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setColorFinishBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
