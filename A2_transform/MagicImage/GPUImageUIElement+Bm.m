#import "GPUImageUIElement+Bm.h"
@implementation GPUImageUIElement (Bm)
+ (BOOL)initWithViewBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)initWithLayerBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)layerSizeInPixelsBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)updateBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)updateUsingCurrentTimeBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)updateWithTimestampBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
