#import "BKMITagsDetailCell+Bm.h"
@implementation BKMITagsDetailCell (Bm)
+ (BOOL)initWithStyleReuseidentifierBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)BKcopyBtnClickedBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setBKmodelBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
