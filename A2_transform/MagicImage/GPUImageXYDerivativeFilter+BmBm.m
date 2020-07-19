#import "GPUImageXYDerivativeFilter+BmBm.h"
@implementation GPUImageXYDerivativeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
