#import "GPUImageLookupFilter+Hb.h"
@implementation GPUImageLookupFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setIntensityHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
