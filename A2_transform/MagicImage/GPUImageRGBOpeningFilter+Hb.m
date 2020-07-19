#import "GPUImageRGBOpeningFilter+Hb.h"
@implementation GPUImageRGBOpeningFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
