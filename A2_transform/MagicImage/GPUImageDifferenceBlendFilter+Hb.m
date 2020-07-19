#import "GPUImageDifferenceBlendFilter+Hb.h"
@implementation GPUImageDifferenceBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
