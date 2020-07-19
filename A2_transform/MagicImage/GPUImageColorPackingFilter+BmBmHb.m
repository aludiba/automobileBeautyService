#import "GPUImageColorPackingFilter+BmBmHb.h"
@implementation GPUImageColorPackingFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setupFilterForSizeBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)sizeOfFBOBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)outputFrameSizeBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
