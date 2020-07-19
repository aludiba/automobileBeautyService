#import "hbGPUImageJFAVoronoiFilterA.h"
@implementation hbGPUImageJFAVoronoiFilterA
+ (BOOL)uinit:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)vSetsizeinpixels:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)yNextpoweroftwo:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)LRendertotexturewithverticesFTexturecoordinates:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
