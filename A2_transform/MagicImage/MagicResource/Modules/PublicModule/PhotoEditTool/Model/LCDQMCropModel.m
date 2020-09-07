#import "LCDQMCropModel.h"
@implementation LCDQMCropModel
+ (NSArray<LCDQMCropModel *> *)buildCropModels
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"croper" ofType:@"geojson"];
    NSData *jsonConfig = [NSData dataWithContentsOfFile:path];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:jsonConfig options:NSJSONReadingMutableContainers error:nil];
    if (!array) {
        return nil;
    }
    NSMutableArray *cropsArr = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        LCDQMCropModel *model = [LCDQMCropModel yy_modelWithDictionary:dict];
        if (model) {
            [cropsArr addObject:model];
        }
    }
    return cropsArr;
}
@end
