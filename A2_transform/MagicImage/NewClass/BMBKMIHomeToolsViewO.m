#import "BMBKMIHomeToolsViewO.h"
@implementation BMBKMIHomeToolsViewO
+ (BOOL)QInitwithframe:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)SBktap:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
