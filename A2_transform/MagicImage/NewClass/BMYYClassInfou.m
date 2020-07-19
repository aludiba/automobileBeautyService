#import "BMYYClassInfou.h"
@implementation BMYYClassInfou
+ (BOOL)ZInitwithclassbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)W_Updatebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)wSetneedupdatebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)INeedupdatebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)GClassinfowithclassbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)AClassinfowithclassnamebm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
