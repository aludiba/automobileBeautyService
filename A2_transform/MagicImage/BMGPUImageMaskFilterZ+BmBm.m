#import "BMGPUImageMaskFilterZ+BmBm.h"
@implementation BMGPUImageMaskFilterZ (BmBm)
+ (BOOL)EinitBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)CRendertotexturewithverticesFTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
