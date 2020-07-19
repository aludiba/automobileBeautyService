#import "NSKeyedUnarchiver+YYAddBmBmBm.h"
@implementation NSKeyedUnarchiver (YYAddBmBmBm)
+ (BOOL)unarchiveObjectWithDataExceptionBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)unarchiveObjectWithFileExceptionBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
