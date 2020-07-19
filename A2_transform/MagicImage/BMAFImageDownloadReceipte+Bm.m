#import "BMAFImageDownloadReceipte+Bm.h"
@implementation BMAFImageDownloadReceipte (Bm)
+ (BOOL)LInitwithreceiptidnTaskBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
