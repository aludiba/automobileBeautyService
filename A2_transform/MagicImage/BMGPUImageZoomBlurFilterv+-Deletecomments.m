#import "BMGPUImageZoomBlurFilterv+-Deletecomments.h"
@implementation BMGPUImageZoomBlurFilterv (-Deletecomments)
+ (BOOL)NInitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)CSetinputrotationatindexbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)SSetblursizebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)oSetblurcenterbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
