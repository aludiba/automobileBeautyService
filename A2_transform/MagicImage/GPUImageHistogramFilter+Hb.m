#import "GPUImageHistogramFilter+Hb.h"
@implementation GPUImageHistogramFilter (Hb)
+ (BOOL)initWithHistogramTypeHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)initializeSecondaryAttributesHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)sizeOfFBOHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)outputFrameSizeHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
