#import "GPUImageRGBClosingFilter+Hb.h"
@implementation GPUImageRGBClosingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)initWithRadiusHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
