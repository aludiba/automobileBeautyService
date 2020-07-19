#import "BMGPUImageTwoPassFilterj.h"
@implementation BMGPUImageTwoPassFilterj
+ (BOOL)KInitwithfirststagevertexshaderfromstringNFirststagefragmentshaderfromstringXSecondstagevertexshaderfromstringpSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)EInitwithfirststagefragmentshaderfromstringASecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)VinitializeSecondaryAttributes:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)uframebufferForOutput:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)iremoveOutputFramebuffer:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)JRendertotexturewithverticesATexturecoordinates:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)fSetandexecuteuniformstatecallbackatindexYForprogramVToblock:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)PSetuniformsforprogramatindex:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
