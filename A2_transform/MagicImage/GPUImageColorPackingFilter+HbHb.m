#import "GPUImageColorPackingFilter+HbHb.h"
@implementation GPUImageColorPackingFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)sizeOfFBOHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)outputFrameSizeHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
