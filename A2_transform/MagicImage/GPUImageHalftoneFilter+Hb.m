#import "GPUImageHalftoneFilter+Hb.h"
@implementation GPUImageHalftoneFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
