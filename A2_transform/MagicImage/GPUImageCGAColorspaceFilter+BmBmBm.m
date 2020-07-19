#import "GPUImageCGAColorspaceFilter+BmBmBm.h"
@implementation GPUImageCGAColorspaceFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
