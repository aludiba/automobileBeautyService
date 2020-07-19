#import "AFImageDownloadReceipt+Bm.h"
@implementation AFImageDownloadReceipt (Bm)
+ (BOOL)initWithReceiptIDTaskBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
