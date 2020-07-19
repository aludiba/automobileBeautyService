#import "hbGPUImagePosterizeFilterp.h"
@implementation hbGPUImagePosterizeFilterp
+ (BOOL)Linit:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)vSetcolorlevels:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
