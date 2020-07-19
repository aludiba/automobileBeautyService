#import "GPUImageNobleCornerDetectionFilter+Bm.h"
@implementation GPUImageNobleCornerDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
