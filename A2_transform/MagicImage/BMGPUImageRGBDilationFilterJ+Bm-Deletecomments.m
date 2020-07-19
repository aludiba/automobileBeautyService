#import "BMGPUImageRGBDilationFilterJ+Bm-Deletecomments.h"
@implementation BMGPUImageRGBDilationFilterJ (Bm-Deletecomments)
+ (BOOL)VInitwithradiusbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)RInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
