#import "hbGPUImageMovieCompositiont.h"
@implementation hbGPUImageMovieCompositiont
+ (BOOL)mInitwithcompositionNAndvideocompositionAAndaudiomix:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)YcreateAssetReader:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
