#import "GPUImageHueFilter+BmBmHb.h"
@implementation GPUImageHueFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setHueBmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
