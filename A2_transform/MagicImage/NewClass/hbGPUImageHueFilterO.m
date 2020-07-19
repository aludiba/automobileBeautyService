#import "hbGPUImageHueFilterO.h"
@implementation hbGPUImageHueFilterO
+ (BOOL)rinit:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)CSethue:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
