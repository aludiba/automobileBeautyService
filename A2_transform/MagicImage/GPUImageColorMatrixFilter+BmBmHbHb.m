#import "GPUImageColorMatrixFilter+BmBmHbHb.h"
@implementation GPUImageColorMatrixFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setIntensityBmBmHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setColorMatrixBmBmHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
