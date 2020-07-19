#import "NSKeyedUnarchiver+YYAddBmBm.h"
@implementation NSKeyedUnarchiver (YYAddBmBm)
+ (BOOL)unarchiveObjectWithDataExceptionBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)unarchiveObjectWithFileExceptionBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
