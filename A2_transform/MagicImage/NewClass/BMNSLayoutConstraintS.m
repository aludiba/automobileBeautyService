#import "BMNSLayoutConstraintS.h"
@implementation BMNSLayoutConstraintS
+ (BOOL)NLayoutrelationdescriptionsbyvaluebmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ILayoutattributedescriptionsbyvaluebmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)rLayoutprioritydescriptionsbyvaluebmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)LDescriptionforobjectbmbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)QDescriptionbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
