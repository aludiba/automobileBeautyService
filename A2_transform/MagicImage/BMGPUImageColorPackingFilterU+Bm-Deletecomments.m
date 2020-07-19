#import "BMGPUImageColorPackingFilterU+Bm-Deletecomments.h"
@implementation BMGPUImageColorPackingFilterU (Bm-Deletecomments)
+ (BOOL)yinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)xSetupfilterforsizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)psizeOfFBOBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)koutputFrameSizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}

@end
