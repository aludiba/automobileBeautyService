#import "BMGPUImageTwoPassTextureSamplingFilterY.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterY
+ (BOOL)tInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)dSetuniformsforprogramatindexbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)lSetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)eSetverticaltexelspacingbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)WSethorizontaltexelspacingbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
