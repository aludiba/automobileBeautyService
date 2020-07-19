#import "BMGPUImageTwoPassTextureSamplingFilterb.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterb
+ (BOOL)DInitwithfirststagevertexshaderfromstringhFirststagefragmentshaderfromstringmSecondstagevertexshaderfromstringmSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)mSetuniformsforprogramatindex:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)nSetupfilterforsize:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)TSetverticaltexelspacing:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)KSethorizontaltexelspacing:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
