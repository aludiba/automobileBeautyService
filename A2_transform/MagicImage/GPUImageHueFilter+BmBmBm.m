#import "GPUImageHueFilter+BmBmBm.h"
@implementation GPUImageHueFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setHueBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
