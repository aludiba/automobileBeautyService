#import "GPUImageNobleCornerDetectionFilter+BmBmBm.h"
@implementation GPUImageNobleCornerDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
