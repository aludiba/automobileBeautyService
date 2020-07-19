#import "GPUImageSaturationFilter+BmHb.h"
@implementation GPUImageSaturationFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setSaturationBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
