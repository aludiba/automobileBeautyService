#import "QMFrameModel+BmBm-Deletecomments.h"
@implementation QMFrameModel (BmBm-Deletecomments)
+ (BOOL)buildFrameModelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
