#import "-deleteCommentsGPUImageTwoPassTextureSamplingFilterN.h"
@implementation -deleteCommentsGPUImageTwoPassTextureSamplingFilterN
+ (BOOL)rInitwithfirststagevertexshaderfromstringmFirststagefragmentshaderfromstringXSecondstagevertexshaderfromstringXSecondstagefragmentshaderfromstring:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)USetuniformsforprogramatindex:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)TSetupfilterforsize:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)KSetverticaltexelspacing:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)BSethorizontaltexelspacing:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
