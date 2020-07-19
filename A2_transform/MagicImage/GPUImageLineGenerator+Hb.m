#import "GPUImageLineGenerator+Hb.h"
@implementation GPUImageLineGenerator (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)generateLineCoordinatesHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)renderLinesFromArrayCountFrametimeHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setLineWidthHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)setLineColorRedGreenBlueHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
