#import "QMDBManager+Bm.h"
@implementation QMDBManager (Bm)
+ (BOOL)shareManagerBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
