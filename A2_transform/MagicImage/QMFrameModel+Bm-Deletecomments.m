#import "QMFrameModel+Bm-Deletecomments.h"
@implementation QMFrameModel (Bm-Deletecomments)
+ (BOOL)buildFrameModelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
