#import "BKMIMoreCell+Bm.h"
@implementation BKMIMoreCell (Bm)
+ (BOOL)initWithStyleReuseidentifierBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
