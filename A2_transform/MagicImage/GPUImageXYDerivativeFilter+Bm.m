#import "GPUImageXYDerivativeFilter+Bm.h"
@implementation GPUImageXYDerivativeFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
