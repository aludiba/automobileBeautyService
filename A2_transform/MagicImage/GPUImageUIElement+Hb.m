#import "GPUImageUIElement+Hb.h"
@implementation GPUImageUIElement (Hb)
+ (BOOL)initWithViewHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)initWithLayerHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)layerSizeInPixelsHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)updateHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)updateUsingCurrentTimeHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)updateWithTimestampHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
