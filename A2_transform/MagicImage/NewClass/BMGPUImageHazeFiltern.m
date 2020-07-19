#import "BMGPUImageHazeFiltern.h"
@implementation BMGPUImageHazeFiltern
+ (BOOL)gInitbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sSetdistancebmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)LSetslopebmbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
