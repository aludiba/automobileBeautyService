#import "GPUImageColorPackingFilter+BmBmBmHb.h"
@implementation GPUImageColorPackingFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)sizeOfFBOBmBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)outputFrameSizeBmBmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
