#import "GPUImageColorMatrixFilter+Hb.h"
@implementation GPUImageColorMatrixFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setIntensityHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setColorMatrixHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
