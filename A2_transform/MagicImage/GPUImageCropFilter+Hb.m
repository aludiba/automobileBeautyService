#import "GPUImageCropFilter+Hb.h"
@implementation GPUImageCropFilter (Hb)
+ (BOOL)initWithCropRegionHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)calculateCropTextureCoordinatesHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)setCropRegionHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
