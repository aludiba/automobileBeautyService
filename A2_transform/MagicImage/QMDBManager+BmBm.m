#import "QMDBManager+BmBm.h"
@implementation QMDBManager (BmBm)
+ (BOOL)shareManagerBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
