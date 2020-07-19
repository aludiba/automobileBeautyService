#import "GPUImageTwoInputFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter.h"
#import "GPUImagePicture.h"

@interface GPUImageMosaicFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setColorOnHb:(NSInteger)hb;
+ (BOOL)setNumTilesHb:(NSInteger)hb;
+ (BOOL)setInputTileSizeHb:(NSInteger)hb;
+ (BOOL)setDisplayTileSizeHb:(NSInteger)hb;
+ (BOOL)setTileSetHb:(NSInteger)hb;

@end
