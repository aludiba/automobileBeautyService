#import "BMBMYYClassInfoIr.h"
@implementation BMBMYYClassInfoIr
+ (BOOL)SXinitwithclassbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)eG_Updatebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)ZQsetneedupdatebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)YKneedupdatebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)nVclassinfowithclassbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)TJclassinfowithclassnamebm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
