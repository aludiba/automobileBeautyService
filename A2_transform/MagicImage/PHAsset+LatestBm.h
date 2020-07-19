#import <Photos/Photos.h>
#import "PHAsset+Latest.h"

@interface PHAsset (LatestBm)
+ (BOOL)latestAssetBm:(NSInteger)BM;
+ (BOOL)latestOriginImageBm:(NSInteger)BM;
+ (BOOL)latestImageWithSizeCompleteblockBm:(NSInteger)BM;

@end
