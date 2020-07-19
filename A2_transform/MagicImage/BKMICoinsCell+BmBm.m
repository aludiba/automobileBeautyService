#import "BKMICoinsCell+BmBm.h"
@implementation BKMICoinsCell (BmBm)
+ (BOOL)initWithStyleReuseidentifierBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setBKmodelBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
