#import "AFImageDownloadReceipt+HbHb.h"
@implementation AFImageDownloadReceipt (HbHb)
+ (BOOL)initWithReceiptIDTaskHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
