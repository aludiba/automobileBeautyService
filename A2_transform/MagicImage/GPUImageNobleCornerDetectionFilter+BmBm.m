#import "GPUImageNobleCornerDetectionFilter+BmBm.h"
@implementation GPUImageNobleCornerDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
