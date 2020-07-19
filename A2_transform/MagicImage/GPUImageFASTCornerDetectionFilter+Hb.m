#import "GPUImageFASTCornerDetectionFilter+Hb.h"
@implementation GPUImageFASTCornerDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)initWithFASTDetectorVariantHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
