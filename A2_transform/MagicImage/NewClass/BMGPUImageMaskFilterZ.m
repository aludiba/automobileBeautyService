#import "BMGPUImageMaskFilterZ.h"
@implementation BMGPUImageMaskFilterZ
+ (BOOL)Einit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)CRendertotexturewithverticesFTexturecoordinates:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
