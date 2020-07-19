#import "GPUImageEmbossFilter+HbHb.h"
@implementation GPUImageEmbossFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setIntensityHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
