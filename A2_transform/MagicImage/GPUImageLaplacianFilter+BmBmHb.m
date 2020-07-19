#import "GPUImageLaplacianFilter+BmBmHb.h"
@implementation GPUImageLaplacianFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
