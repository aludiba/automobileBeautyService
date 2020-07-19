#import "BMGPUImageTwoPassTextureSamplingFilterP.h"
@implementation BMGPUImageTwoPassTextureSamplingFilterP
+ (BOOL)XInitwithfirststagevertexshaderfromstringMFirststagefragmentshaderfromstringnSecondstagevertexshaderfromstringcSecondstagefragmentshaderfromstring:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)mSetuniformsforprogramatindex:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)qSetupfilterforsize:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)iSetverticaltexelspacing:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)MSethorizontaltexelspacing:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
