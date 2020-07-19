#import "GPUImagePosterizeFilter+BmBmHb.h"
@implementation GPUImagePosterizeFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setColorLevelsBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
