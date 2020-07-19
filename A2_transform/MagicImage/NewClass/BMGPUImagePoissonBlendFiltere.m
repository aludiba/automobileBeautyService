#import "BMGPUImagePoissonBlendFiltere.h"
@implementation BMGPUImagePoissonBlendFiltere
+ (BOOL)Hinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)eSetmix:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)VRendertotexturewithverticeszTexturecoordinates:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
