#import "hbGPUImageRGBDilationFilterE.h"
@implementation hbGPUImageRGBDilationFilterE
+ (BOOL)hInitwithradiushb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)OInithb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
