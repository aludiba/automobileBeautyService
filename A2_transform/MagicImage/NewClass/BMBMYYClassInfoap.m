#import "BMBMYYClassInfoap.h"
@implementation BMBMYYClassInfoap
+ (BOOL)jHinitwithclassbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)jR_Updatebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)UZsetneedupdatebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)dAneedupdatebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)NYclassinfowithclassbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)tEclassinfowithclassnamebm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
