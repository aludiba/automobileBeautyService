#import "QMSuspensionModel+BmBm.h"
@implementation QMSuspensionModel (BmBm)
+ (BOOL)buildSuspensionModelsWithJsonBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)buildSuspensionModelsWithConfigBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
