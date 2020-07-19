#import "BMBMGPUImageBoxBlurFilterTD+-Deletecomments.h"
@implementation BMBMGPUImageBoxBlurFilterTD (-Deletecomments)
+ (BOOL)KDvertexshaderforoptimizedblurofradiusgsigmabm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)PTfragmentshaderforoptimizedblurofradiusqsigmabm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)lOsetupfilterforsizebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)PYinitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)QIsetblurradiusinpixelsbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}

@end
