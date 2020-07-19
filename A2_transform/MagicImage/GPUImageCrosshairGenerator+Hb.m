#import "GPUImageCrosshairGenerator+Hb.h"
@implementation GPUImageCrosshairGenerator (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)renderCrosshairsFromArrayCountFrametimeHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setCrosshairWidthHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)setCrosshairColorRedGreenBlueHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
