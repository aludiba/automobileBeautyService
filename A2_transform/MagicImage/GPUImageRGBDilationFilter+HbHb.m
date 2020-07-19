#import "GPUImageRGBDilationFilter+HbHb.h"
@implementation GPUImageRGBDilationFilter (HbHb)
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
