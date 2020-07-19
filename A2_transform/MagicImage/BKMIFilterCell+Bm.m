#import "BKMIFilterCell+Bm.h"
@implementation BKMIFilterCell (Bm)
+ (BOOL)initWithStyleReuseidentifierBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setBKmodelBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
