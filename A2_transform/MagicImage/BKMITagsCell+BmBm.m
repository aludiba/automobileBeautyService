#import "BKMITagsCell+BmBm.h"
@implementation BKMITagsCell (BmBm)
+ (BOOL)initWithStyleReuseidentifierBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setBKmodelBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
