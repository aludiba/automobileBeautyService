#import "BMGPUImage3x3TextureSamplingFilterk+-Deletecomments.h"
@implementation BMGPUImage3x3TextureSamplingFilterk (-Deletecomments)
+ (BOOL)fInitwithvertexshaderfromstringfragmentshaderfromstringbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)fInitwithfragmentshaderfromstringbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)DSetupfilterforsizebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)rSettexelwidthbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)nSettexelheightbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
