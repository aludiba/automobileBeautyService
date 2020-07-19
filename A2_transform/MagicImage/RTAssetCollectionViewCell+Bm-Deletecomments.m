#import "RTAssetCollectionViewCell+Bm-Deletecomments.h"
@implementation RTAssetCollectionViewCell (Bm-Deletecomments)
+ (BOOL)setSelectedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
