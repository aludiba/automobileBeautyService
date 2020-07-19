#import "BMQMDBManagerp+Bm.h"
@implementation BMQMDBManagerp (Bm)
+ (BOOL)ushareManagerBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
