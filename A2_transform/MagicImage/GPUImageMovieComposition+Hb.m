#import "GPUImageMovieComposition+Hb.h"
@implementation GPUImageMovieComposition (Hb)
+ (BOOL)initWithCompositionAndvideocompositionAndaudiomixHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)createAssetReaderHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
