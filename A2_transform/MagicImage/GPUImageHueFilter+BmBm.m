#import "GPUImageHueFilter+BmBm.h"
@implementation GPUImageHueFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setHueBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
