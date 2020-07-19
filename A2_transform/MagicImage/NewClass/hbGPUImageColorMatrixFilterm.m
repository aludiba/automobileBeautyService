#import "hbGPUImageColorMatrixFilterm.h"
@implementation hbGPUImageColorMatrixFilterm
+ (BOOL)Uinit:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)sSetintensity:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)DSetcolormatrix:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
