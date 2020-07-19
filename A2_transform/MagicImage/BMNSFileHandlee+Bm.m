#import "BMNSFileHandlee+Bm.h"
@implementation BMNSFileHandlee (Bm)
+ (BOOL)nrac_readInBackgroundBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
