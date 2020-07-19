#import "GPUImageColorPackingFilter+Hb.h"
@implementation GPUImageColorPackingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)sizeOfFBOHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)outputFrameSizeHb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
