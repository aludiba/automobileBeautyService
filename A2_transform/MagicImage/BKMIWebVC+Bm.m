#import "BKMIWebVC+Bm.h"
@implementation BKMIWebVC (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
