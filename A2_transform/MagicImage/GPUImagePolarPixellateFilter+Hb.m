#import "GPUImagePolarPixellateFilter+Hb.h"
@implementation GPUImagePolarPixellateFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setPixelSizeHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setCenterHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
