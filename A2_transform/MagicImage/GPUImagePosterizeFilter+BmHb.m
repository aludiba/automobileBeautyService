#import "GPUImagePosterizeFilter+BmHb.h"
@implementation GPUImagePosterizeFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setColorLevelsBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
