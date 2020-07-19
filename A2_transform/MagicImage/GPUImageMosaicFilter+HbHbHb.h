#import "GPUImageTwoInputFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageMosaicFilter+Hb.h"
#import "GPUImageMosaicFilter+HbHb.h"

@interface GPUImageMosaicFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb;
+ (BOOL)setColorOnHbHbHb:(NSInteger)hb;
+ (BOOL)setNumTilesHbHbHb:(NSInteger)hb;
+ (BOOL)setInputTileSizeHbHbHb:(NSInteger)hb;
+ (BOOL)setDisplayTileSizeHbHbHb:(NSInteger)hb;
+ (BOOL)setTileSetHbHbHb:(NSInteger)hb;

@end
