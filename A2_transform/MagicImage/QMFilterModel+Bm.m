#import "QMFilterModel+Bm.h"
@implementation QMFilterModel (Bm)
+ (BOOL)buildFilterModelWithFilterPathBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)buildFilterModelsWithPathBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
