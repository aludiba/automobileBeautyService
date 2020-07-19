#import "BKMIHomeSectionTowCell+Bm.h"
@implementation BKMIHomeSectionTowCell (Bm)
+ (BOOL)initWithStyleReuseidentifierBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBKmodelBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
