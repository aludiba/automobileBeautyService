#import "GPUImageRGBClosingFilter+HbHb.h"
@implementation GPUImageRGBClosingFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
