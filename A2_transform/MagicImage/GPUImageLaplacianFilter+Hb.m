#import "GPUImageLaplacianFilter+Hb.h"
@implementation GPUImageLaplacianFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
