#import "BKMIMoreCell+BmBm.h"
@implementation BKMIMoreCell (BmBm)
+ (BOOL)initWithStyleReuseidentifierBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
