#import "BMBKMIHomeToolsViewQ.h"
@implementation BMBKMIHomeToolsViewQ
+ (BOOL)iInitwithframe:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)tBktap:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
