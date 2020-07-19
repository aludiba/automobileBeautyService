#import "BKMIHomeSectionOneCell+BmBm.h"
@implementation BKMIHomeSectionOneCell (BmBm)
+ (BOOL)initWithStyleReuseidentifierBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
