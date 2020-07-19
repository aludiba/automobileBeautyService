#import "BMBKMIStickerDetailCellP+Bm-Deletecomments.h"
@implementation BMBKMIStickerDetailCellP (Bm-Deletecomments)
+ (BOOL)SInitwithframebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)pSetbkpicurlbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
