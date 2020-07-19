#import "BMNSFileHandlee.h"
@implementation BMNSFileHandlee
+ (BOOL)nrac_readInBackground:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
