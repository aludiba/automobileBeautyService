#import "BMRACGroupedSignalM.h"
@implementation BMRACGroupedSignalM
+ (BOOL)pSignalwithkeybm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
