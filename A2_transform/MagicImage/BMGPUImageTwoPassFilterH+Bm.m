#import "BMGPUImageTwoPassFilterH+Bm.h"
@implementation BMGPUImageTwoPassFilterH (Bm)
+ (BOOL)KInitwithfirststagevertexshaderfromstringWFirststagefragmentshaderfromstringASecondstagevertexshaderfromstringcSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)FInitwithfirststagefragmentshaderfromstringCSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)RinitializeSecondaryAttributesBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)SframebufferForOutputBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)GremoveOutputFramebufferBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)pRendertotexturewithverticesXTexturecoordinatesBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)qSetandexecuteuniformstatecallbackatindexvForprogramKToblockBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)gSetuniformsforprogramatindexBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
