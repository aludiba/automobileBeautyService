#import "GPUImageCGAColorspaceFilter+Bm.h"
@implementation GPUImageCGAColorspaceFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
