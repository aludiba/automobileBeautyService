#import "BKMIHomeSectionTowCell+BmBm.h"
@implementation BKMIHomeSectionTowCell (BmBm)
+ (BOOL)initWithStyleReuseidentifierBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setBKmodelBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
