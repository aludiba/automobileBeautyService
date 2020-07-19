#import "BMBKMICoinsCellL+Bm.h"
@implementation BMBKMICoinsCellL (Bm)
+ (BOOL)JInitwithstyleJReuseidentifierBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)HSetbkmodelBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
