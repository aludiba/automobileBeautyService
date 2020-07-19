#import "BMBMGPUImageBoxBlurFilterUW+-Deletecomments.h"
@implementation BMBMGPUImageBoxBlurFilterUW (-Deletecomments)
+ (BOOL)TAvertexshaderforoptimizedblurofradiusssigma-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)aWfragmentshaderforoptimizedblurofradiusasigma-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)VFsetupfilterforsize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)KFinit-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)YYsetblurradiusinpixels-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
