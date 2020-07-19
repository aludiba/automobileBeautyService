#import "hbGPUImagePosterizeFilterp+Hb.h"
@implementation hbGPUImagePosterizeFilterp (Hb)
+ (BOOL)LinitHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)vSetcolorlevelsHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
