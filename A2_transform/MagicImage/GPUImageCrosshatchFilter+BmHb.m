#import "GPUImageCrosshatchFilter+BmHb.h"
@implementation GPUImageCrosshatchFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setCrossHatchSpacingBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setLineWidthBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
