#import "GPUImageTwoInputFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter.h"
#import "GPUImagePicture.h"

@interface GPUImageMosaicFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setColorOnBm:(NSInteger)BM;
+ (BOOL)setNumTilesBm:(NSInteger)BM;
+ (BOOL)setInputTileSizeBm:(NSInteger)BM;
+ (BOOL)setDisplayTileSizeBm:(NSInteger)BM;
+ (BOOL)setTileSetBm:(NSInteger)BM;

@end
