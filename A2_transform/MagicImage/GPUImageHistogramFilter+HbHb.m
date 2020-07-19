#import "GPUImageHistogramFilter+HbHb.h"
@implementation GPUImageHistogramFilter (HbHb)
+ (BOOL)initWithHistogramTypeHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)initializeSecondaryAttributesHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)deallocHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)sizeOfFBOHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)outputFrameSizeHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setInputSizeAtindexHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setInputRotationAtindexHbHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
