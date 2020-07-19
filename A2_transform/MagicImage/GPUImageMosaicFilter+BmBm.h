#import "GPUImageTwoInputFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter+Bm.h"

@interface GPUImageMosaicFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setColorOnBmBm:(NSInteger)BM;
+ (BOOL)setNumTilesBmBm:(NSInteger)BM;
+ (BOOL)setInputTileSizeBmBm:(NSInteger)BM;
+ (BOOL)setDisplayTileSizeBmBm:(NSInteger)BM;
+ (BOOL)setTileSetBmBm:(NSInteger)BM;

@end
