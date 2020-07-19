#import "GPUImageLookupFilter+HbHb.h"
@implementation GPUImageLookupFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setIntensityHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
