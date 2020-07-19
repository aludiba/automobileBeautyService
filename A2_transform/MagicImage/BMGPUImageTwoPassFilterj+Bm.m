#import "BMGPUImageTwoPassFilterj+Bm.h"
@implementation BMGPUImageTwoPassFilterj (Bm)
+ (BOOL)KInitwithfirststagevertexshaderfromstringNFirststagefragmentshaderfromstringXSecondstagevertexshaderfromstringpSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)EInitwithfirststagefragmentshaderfromstringASecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)VinitializeSecondaryAttributesBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)uframebufferForOutputBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)iremoveOutputFramebufferBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)JRendertotexturewithverticesATexturecoordinatesBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)fSetandexecuteuniformstatecallbackatindexYForprogramVToblockBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)PSetuniformsforprogramatindexBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
