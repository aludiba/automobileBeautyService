#import "GPUImageSharpenFilter+HbHb.h"
@implementation GPUImageSharpenFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setSharpnessHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
