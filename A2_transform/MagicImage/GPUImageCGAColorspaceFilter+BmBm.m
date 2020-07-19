#import "GPUImageCGAColorspaceFilter+BmBm.h"
@implementation GPUImageCGAColorspaceFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
