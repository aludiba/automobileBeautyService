#import "hbGPUImagePoissonBlendFilterZ.h"
@implementation hbGPUImagePoissonBlendFilterZ
+ (BOOL)binit:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)ISetmix:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)QRendertotexturewithverticesKTexturecoordinates:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
