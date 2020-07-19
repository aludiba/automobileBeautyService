#import "GPUImagePixellateFilter+BmHb.h"
@implementation GPUImagePixellateFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)adjustAspectRatioBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setFractionalWidthOfAPixelBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setAspectRatioBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
