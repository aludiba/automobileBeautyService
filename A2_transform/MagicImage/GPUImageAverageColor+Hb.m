#import "GPUImageAverageColor+Hb.h"
@implementation GPUImageAverageColor (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)extractAverageColorAtFrameTimeHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
