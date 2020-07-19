#import "BMYYClassInfoI.h"
@implementation BMYYClassInfoI
+ (BOOL)xInitwithclassbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)g_Updatebm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)qSetneedupdatebm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)kNeedupdatebm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)vClassinfowithclassbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)JClassinfowithclassnamebm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
