#import "BMNSFileHandleq+Bm.h"
@implementation BMNSFileHandleq (Bm)
+ (BOOL)prac_readInBackgroundBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
