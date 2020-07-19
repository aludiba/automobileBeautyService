#import "BMBMYYClassInfouI.h"
@implementation BMBMYYClassInfouI
+ (BOOL)VZinitwithclassbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)XW_Updatebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)uWsetneedupdatebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)ZIneedupdatebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)iGclassinfowithclassbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)MAclassinfowithclassnamebm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
