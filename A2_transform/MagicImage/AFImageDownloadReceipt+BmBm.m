#import "AFImageDownloadReceipt+BmBm.h"
@implementation AFImageDownloadReceipt (BmBm)
+ (BOOL)initWithReceiptIDTaskBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
