#import "GPUImageColorMatrixFilter+BmBmHb.h"
@implementation GPUImageColorMatrixFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setIntensityBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setColorMatrixBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
