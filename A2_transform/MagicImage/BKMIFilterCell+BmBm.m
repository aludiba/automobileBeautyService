#import "BKMIFilterCell+BmBm.h"
@implementation BKMIFilterCell (BmBm)
+ (BOOL)initWithStyleReuseidentifierBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setBKmodelBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
