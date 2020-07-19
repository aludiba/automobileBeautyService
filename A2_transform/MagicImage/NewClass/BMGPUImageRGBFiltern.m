#import "BMGPUImageRGBFiltern.h"
@implementation BMGPUImageRGBFiltern
+ (BOOL)iInitbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)vSetredbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)NSetgreenbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)iSetbluebm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
