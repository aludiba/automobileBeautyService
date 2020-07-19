#import "hbGPUImageJFAVoronoiFilterW.h"
@implementation hbGPUImageJFAVoronoiFilterW
+ (BOOL)Pinit:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)XSetsizeinpixels:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)CNextpoweroftwo:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)BRendertotexturewithverticesFTexturecoordinates:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
