#import "GPUImageCrosshatchFilter+Hb.h"
@implementation GPUImageCrosshatchFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setCrossHatchSpacingHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setLineWidthHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
