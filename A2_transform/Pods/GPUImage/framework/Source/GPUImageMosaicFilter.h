#import "GPUImageTwoInputFilter.h"
#import "GPUImagePicture.h"
@interface GPUImageMosaicFilter : GPUImageTwoInputFilter {
    GLint inputTileSizeUniform, numTilesUniform, displayTileSizeUniform, colorOnUniform;
    GPUImagePicture *pic;
}
@property(readwrite, nonatomic) CGSize inputTileSize;
@property(readwrite, nonatomic) float numTiles;
@property(readwrite, nonatomic) CGSize displayTileSize;
@property(readwrite, nonatomic) BOOL colorOn;
@property(readwrite, nonatomic, copy) NSString *tileSet;
@end
