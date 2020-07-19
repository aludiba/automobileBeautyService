#import "GPUImageRGBDilationFilter+Hb.h"
@implementation GPUImageRGBDilationFilter (Hb)
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
