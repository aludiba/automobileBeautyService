#import "BMAFImageDownloadReceipta+Bm.h"
@implementation BMAFImageDownloadReceipta (Bm)
+ (BOOL)BInitwithreceiptidrTaskBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
