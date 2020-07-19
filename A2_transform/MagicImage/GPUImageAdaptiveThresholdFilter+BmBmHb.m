#import "GPUImageAdaptiveThresholdFilter+BmBmHb.h"
@implementation GPUImageAdaptiveThresholdFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
