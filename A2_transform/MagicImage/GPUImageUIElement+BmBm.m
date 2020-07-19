#import "GPUImageUIElement+BmBm.h"
@implementation GPUImageUIElement (BmBm)
+ (BOOL)initWithViewBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)initWithLayerBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)layerSizeInPixelsBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)updateBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)updateUsingCurrentTimeBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)updateWithTimestampBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
