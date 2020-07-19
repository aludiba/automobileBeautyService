#import "QMCropModel+Bm-Deletecomments.h"
@implementation QMCropModel (Bm-Deletecomments)
+ (BOOL)buildCropModelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
