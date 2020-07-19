#import "GPUImageLineGenerator+HbHb.h"
@implementation GPUImageLineGenerator (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)deallocHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)generateLineCoordinatesHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)renderLinesFromArrayCountFrametimeHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setLineWidthHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setLineColorRedGreenBlueHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
