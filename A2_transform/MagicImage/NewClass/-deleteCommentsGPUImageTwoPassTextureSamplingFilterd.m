#import "-deleteCommentsGPUImageTwoPassTextureSamplingFilterd.h"
@implementation -deleteCommentsGPUImageTwoPassTextureSamplingFilterd
+ (BOOL)gInitwithfirststagevertexshaderfromstringXFirststagefragmentshaderfromstringvSecondstagevertexshaderfromstringFSecondstagefragmentshaderfromstring:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)ESetuniformsforprogramatindex:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)BSetupfilterforsize:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)FSetverticaltexelspacing:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)bSethorizontaltexelspacing:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
