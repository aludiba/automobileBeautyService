#import "GPUImageExposureFilter+Hb.h"
@implementation GPUImageExposureFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setExposureHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
