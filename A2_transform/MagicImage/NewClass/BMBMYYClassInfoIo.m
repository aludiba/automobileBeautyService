#import "BMBMYYClassInfoIo.h"
@implementation BMBMYYClassInfoIo
+ (BOOL)jXinitwithclassbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)vG_Updatebm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)kQsetneedupdatebm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)tKneedupdatebm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)bVclassinfowithclassbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)wJclassinfowithclassnamebm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
