#import "GPUImageTwoInputFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter+Hb.h"

@interface GPUImageMosaicFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setColorOnHbHb:(NSInteger)hb;
+ (BOOL)setNumTilesHbHb:(NSInteger)hb;
+ (BOOL)setInputTileSizeHbHb:(NSInteger)hb;
+ (BOOL)setDisplayTileSizeHbHb:(NSInteger)hb;
+ (BOOL)setTileSetHbHb:(NSInteger)hb;

@end
