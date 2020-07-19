#import "GPUImageHueFilter+Bm.h"
@implementation GPUImageHueFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setHueBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
