#import "BMGPUImageToonFilterL.h"
@implementation BMGPUImageToonFilterL
+ (BOOL)XInitbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ISetthresholdbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)GSetquantizationlevelsbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
