#import "NSObject+SDAnyObjectAutoCellHeightBm.h"
@implementation NSObject (SDAnyObjectAutoCellHeightBm)
+ (BOOL)cellHeightForIndexPathCellcontentviewwidthTableviewBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
