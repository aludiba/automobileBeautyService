#import "GPUImageZoomBlurFilter+Hb.h"
@implementation GPUImageZoomBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setBlurSizeHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setBlurCenterHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
