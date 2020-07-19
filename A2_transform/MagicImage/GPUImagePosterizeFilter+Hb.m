#import "GPUImagePosterizeFilter+Hb.h"
@implementation GPUImagePosterizeFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setColorLevelsHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
