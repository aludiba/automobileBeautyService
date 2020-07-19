#import "QMSuspensionModel+Bm.h"
@implementation QMSuspensionModel (Bm)
+ (BOOL)buildSuspensionModelsWithJsonBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)buildSuspensionModelsWithConfigBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
