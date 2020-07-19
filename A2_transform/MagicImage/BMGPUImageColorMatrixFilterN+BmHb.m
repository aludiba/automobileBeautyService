#import "BMGPUImageColorMatrixFilterN+BmHb.h"
@implementation BMGPUImageColorMatrixFilterN (BmHb)
+ (BOOL)minitBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)RSetintensityBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)JSetcolormatrixBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
