#import "BMAFImageDownloadReceipta+Bm-Deletecomments.h"
@implementation BMAFImageDownloadReceipta (Bm-Deletecomments)
+ (BOOL)BInitwithreceiptidrTaskBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}

@end
