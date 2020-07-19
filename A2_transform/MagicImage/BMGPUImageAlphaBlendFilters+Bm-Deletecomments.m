#import "BMGPUImageAlphaBlendFilters+Bm-Deletecomments.h"
@implementation BMGPUImageAlphaBlendFilters (Bm-Deletecomments)
+ (BOOL)NinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)SSetmixBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
