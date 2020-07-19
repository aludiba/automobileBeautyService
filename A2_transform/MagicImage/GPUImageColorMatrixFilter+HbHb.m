#import "GPUImageColorMatrixFilter+HbHb.h"
@implementation GPUImageColorMatrixFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setIntensityHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)setColorMatrixHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
