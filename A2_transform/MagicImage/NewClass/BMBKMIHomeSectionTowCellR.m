#import "BMBKMIHomeSectionTowCellR.h"
@implementation BMBKMIHomeSectionTowCellR
+ (BOOL)yInitwithstyleNReuseidentifier:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)MSetbkmodel:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
