#import "GPUImageSharpenFilter+Hb.h"
@implementation GPUImageSharpenFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setSharpnessHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
