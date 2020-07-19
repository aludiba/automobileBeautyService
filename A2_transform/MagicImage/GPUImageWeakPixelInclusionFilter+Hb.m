#import "GPUImageWeakPixelInclusionFilter+Hb.h"
@implementation GPUImageWeakPixelInclusionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
