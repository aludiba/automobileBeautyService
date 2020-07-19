#import "BKMIFilterCell+BmBmHb.h"
@implementation BKMIFilterCell (BmBmHb)
+ (BOOL)initWithStyleReuseidentifierBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setBKmodelBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
