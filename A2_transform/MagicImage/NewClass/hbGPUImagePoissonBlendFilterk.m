#import "hbGPUImagePoissonBlendFilterk.h"
@implementation hbGPUImagePoissonBlendFilterk
+ (BOOL)Einit:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)TSetmix:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)ORendertotexturewithverticesXTexturecoordinates:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
