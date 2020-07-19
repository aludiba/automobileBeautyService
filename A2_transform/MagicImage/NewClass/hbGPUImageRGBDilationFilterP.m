#import "hbGPUImageRGBDilationFilterP.h"
@implementation hbGPUImageRGBDilationFilterP
+ (BOOL)yInitwithradius:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)winit:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
