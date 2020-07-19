#import "GPUImagePolarPixellateFilter+BmHb.h"
@implementation GPUImagePolarPixellateFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setPixelSizeBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setCenterBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
