#import "GPUImageRGBOpeningFilter+HbHb.h"
@implementation GPUImageRGBOpeningFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
