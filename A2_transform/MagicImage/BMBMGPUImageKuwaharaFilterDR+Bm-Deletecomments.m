#import "BMBMGPUImageKuwaharaFilterDR+Bm-Deletecomments.h"
@implementation BMBMGPUImageKuwaharaFilterDR (Bm-Deletecomments)
+ (BOOL)IUinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)UZsetradiusBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
