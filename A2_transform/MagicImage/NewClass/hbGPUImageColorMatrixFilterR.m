#import "hbGPUImageColorMatrixFilterR.h"
@implementation hbGPUImageColorMatrixFilterR
+ (BOOL)Jinit:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)uSetintensity:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)fSetcolormatrix:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
