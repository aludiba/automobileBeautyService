#import "RTAlbumTableViewCell+Bm.h"
@implementation RTAlbumTableViewCell (Bm)
+ (BOOL)initWithStyleReuseidentifierBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)initSubViewsBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)layoutSubviewsBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setSelectedAnimatedBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)shadowPathWithRectBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)shadowViewBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
