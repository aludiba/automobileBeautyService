#import "GPUImageHueFilter+Hb.h"
@implementation GPUImageHueFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)setHueHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
