#import "AFImageDownloadReceipt+Hb.h"
@implementation AFImageDownloadReceipt (Hb)
+ (BOOL)initWithReceiptIDTaskHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
