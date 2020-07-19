#import "BMBMGPUImageFalseColorFiltervO.h"
@implementation BMBMGPUImageFalseColorFiltervO
+ (BOOL)NAinit:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)YTsetfirstcolor:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)aYsetsecondcolor:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)bQsetfirstcolorredvgreencblue:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)aZsetsecondcolorredugreengblue:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
