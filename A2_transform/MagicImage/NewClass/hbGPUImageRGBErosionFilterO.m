#import "hbGPUImageRGBErosionFilterO.h"
@implementation hbGPUImageRGBErosionFilterO
+ (BOOL)DInitwithradius:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)Einit:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
