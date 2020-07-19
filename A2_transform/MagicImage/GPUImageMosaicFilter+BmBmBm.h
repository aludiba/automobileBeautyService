#import "GPUImageTwoInputFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter+Bm.h"
#import "GPUImageMosaicFilter+BmBm.h"

@interface GPUImageMosaicFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setColorOnBmBmBm:(NSInteger)BM;
+ (BOOL)setNumTilesBmBmBm:(NSInteger)BM;
+ (BOOL)setInputTileSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setDisplayTileSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setTileSetBmBmBm:(NSInteger)BM;

@end
