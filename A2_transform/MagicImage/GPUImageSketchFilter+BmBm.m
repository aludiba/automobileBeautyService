#import "GPUImageSketchFilter+BmBm.h"
@implementation GPUImageSketchFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
