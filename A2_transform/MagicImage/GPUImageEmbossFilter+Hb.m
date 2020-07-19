#import "GPUImageEmbossFilter+Hb.h"
@implementation GPUImageEmbossFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setIntensityHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
