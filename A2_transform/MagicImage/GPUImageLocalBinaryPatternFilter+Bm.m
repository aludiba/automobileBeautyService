#import "GPUImageLocalBinaryPatternFilter+Bm.h"
@implementation GPUImageLocalBinaryPatternFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
