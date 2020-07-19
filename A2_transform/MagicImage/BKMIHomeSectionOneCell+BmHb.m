#import "BKMIHomeSectionOneCell+BmHb.h"
@implementation BKMIHomeSectionOneCell (BmHb)
+ (BOOL)initWithStyleReuseidentifierBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
