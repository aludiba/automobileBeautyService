#import "BMGPUImageRGBClosingFiltert+Bm-Deletecomments.h"
@implementation BMGPUImageRGBClosingFiltert (Bm-Deletecomments)
+ (BOOL)uinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)nInitwithradiusBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
