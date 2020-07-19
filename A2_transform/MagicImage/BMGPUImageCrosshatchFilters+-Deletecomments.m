#import "BMGPUImageCrosshatchFilters+-Deletecomments.h"
@implementation BMGPUImageCrosshatchFilters (-Deletecomments)
+ (BOOL)SInitbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)USetcrosshatchspacingbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)YSetlinewidthbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
