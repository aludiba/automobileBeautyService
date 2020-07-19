#import "GPUImageColorPackingFilter+HbHbHb.h"
@implementation GPUImageColorPackingFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setupFilterForSizeHbHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)sizeOfFBOHbHbHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)outputFrameSizeHbHbHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
