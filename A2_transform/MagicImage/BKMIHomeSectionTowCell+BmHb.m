#import "BKMIHomeSectionTowCell+BmHb.h"
@implementation BKMIHomeSectionTowCell (BmHb)
+ (BOOL)initWithStyleReuseidentifierBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setBKmodelBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
