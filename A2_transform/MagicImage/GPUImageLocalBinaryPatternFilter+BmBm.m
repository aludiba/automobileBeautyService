#import "GPUImageLocalBinaryPatternFilter+BmBm.h"
@implementation GPUImageLocalBinaryPatternFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
