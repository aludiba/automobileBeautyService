#import "BMGPUImageSharpenFilterZ+Bm-Deletecomments.h"
@implementation BMGPUImageSharpenFilterZ (Bm-Deletecomments)
+ (BOOL)QinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)cSetupfilterforsizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)tSetsharpnessBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}

@end
