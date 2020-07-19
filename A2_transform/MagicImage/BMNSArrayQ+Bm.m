#import "BMNSArrayQ+Bm.h"
@implementation BMNSArrayQ (Bm)
+ (BOOL)IArraywithplistdataBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)RArraywithpliststringBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)pplistDataBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)QplistStringBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)arandomObjectBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)TObjectornilatindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)IjsonStringEncodedBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)TjsonPrettyStringEncodedBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
