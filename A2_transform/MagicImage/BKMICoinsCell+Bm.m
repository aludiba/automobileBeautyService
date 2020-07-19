#import "BKMICoinsCell+Bm.h"
@implementation BKMICoinsCell (Bm)
+ (BOOL)initWithStyleReuseidentifierBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setBKmodelBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
