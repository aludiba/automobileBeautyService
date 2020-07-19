#import "BMGPUImageTwoPassFilterH.h"
@implementation BMGPUImageTwoPassFilterH
+ (BOOL)KInitwithfirststagevertexshaderfromstringWFirststagefragmentshaderfromstringASecondstagevertexshaderfromstringcSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)FInitwithfirststagefragmentshaderfromstringCSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)RinitializeSecondaryAttributes:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)SframebufferForOutput:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)GremoveOutputFramebuffer:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)pRendertotexturewithverticesXTexturecoordinates:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)qSetandexecuteuniformstatecallbackatindexvForprogramKToblock:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)gSetuniformsforprogramatindex:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
