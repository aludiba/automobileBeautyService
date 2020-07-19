#import "GPUImageSharpenFilter+BmBmBmHbHb.h"
@implementation GPUImageSharpenFilter (BmBmBmHbHb)
+ (BOOL)initBmBmBmHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBmHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setSharpnessBmBmBmHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
