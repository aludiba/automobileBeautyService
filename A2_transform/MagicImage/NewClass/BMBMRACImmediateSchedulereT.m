#import "BMBMRACImmediateSchedulereT.h"
@implementation BMBMRACImmediateSchedulereT
+ (BOOL)vYinitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)nYschedulebm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)nDafterlschedulebm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)tNafterqrepeatingeveryqwithleewaymschedulebm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)RIschedulerecursiveblockbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
