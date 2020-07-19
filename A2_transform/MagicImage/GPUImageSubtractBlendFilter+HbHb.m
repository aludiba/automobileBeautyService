#import "GPUImageSubtractBlendFilter+HbHb.h"
@implementation GPUImageSubtractBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
