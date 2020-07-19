#import "BKMITagsCell+Bm.h"
@implementation BKMITagsCell (Bm)
+ (BOOL)initWithStyleReuseidentifierBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setBKmodelBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
