#import "BKMITagsDetailCell+BmHb.h"
@implementation BKMITagsDetailCell (BmHb)
+ (BOOL)initWithStyleReuseidentifierBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)BKcopyBtnClickedBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setBKmodelBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
