#import "GPUImageSolidColorGenerator+Hb.h"
@implementation GPUImageSolidColorGenerator (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setColorHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setColorRedGreenBlueAlphaHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setUseExistingAlphaHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
