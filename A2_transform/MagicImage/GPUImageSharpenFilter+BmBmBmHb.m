#import "GPUImageSharpenFilter+BmBmBmHb.h"
@implementation GPUImageSharpenFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setSharpnessBmBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
