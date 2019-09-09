//
//  PKDistributionViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKDistributionViewController.h"
#import "PocketBooks-Bridging-Header.h"
#import "PKBudgetModel.h"
#import "PKAddBudgetViewController.h"
@interface PKDistributionViewController ()
@property(nonatomic, strong)PieChartView *pieChartView;//饼状图
@property(nonatomic, strong)NSMutableArray *titlesArray;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UIButton *addButton;
@property(nonatomic, copy)NSString *nowTimeStampString;
@end

@implementation PKDistributionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"分配", nil);
    NSDate *nowDate = [[NSDate alloc] init];
    self.nowTimeStampString = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"yyyyMM"];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadInitData];
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.addButton];
    self.navigationItem.rightBarButtonItem = addButtonItem;
}
- (void)loadInitData{
    [self.dataArray removeAllObjects];
    
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKBudget"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
        }else{
            if (array.count) {
                BmobObject *obj = [array lastObject];
                NSDate *date = [obj objectForKey:@"date"];
                NSString *dateString = [PKUIUtilities PKformattedTimeStringWithDate:date format:@"yyyy-MM-dd"];
                NSDate *nowDate = [[NSDate alloc] init];
                NSString *nowDateString = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                if ([dateString isEqualToString:nowDateString]) {
                    NSArray *dataArray  = [obj objectForKey:@"data"];
                    for (int i = 0;i < dataArray.count; i++) {
                        NSDictionary *dic = dataArray[i];
                        PKBudgetModel *model = [[PKBudgetModel alloc] init];
                        model.content = [dic objectForKey:@"content"];
                        model.unit = [dic objectForKey:@"unit"];
                        model.code = [[dic objectForKey:@"code"] integerValue];
                        model.limits = [dic objectForKey:@"limits"];
                        switch (model.code) {
                            case 000:
                                model.title = NSLocalizedString(@"服饰", nil);
                                break;
                            case 001:
                                model.title = NSLocalizedString(@"食品", nil);
                                break;
                            case 002:
                                model.title = NSLocalizedString(@"房屋", nil);
                                break;
                            case 003:
                                model.title = NSLocalizedString(@"交通", nil);
                                break;
                            case 004:
                                model.title = NSLocalizedString(@"健康", nil);
                                break;
                            case 005:
                                model.title = NSLocalizedString(@"空闲", nil);
                                break;
                            case 006:
                                model.title = NSLocalizedString(@"网费", nil);
                                break;
                            case 007:
                                model.title = NSLocalizedString(@"手机", nil);
                                break;
                            case 071:
                                model.title = NSLocalizedString(@"水费", nil);
                                break;
                            case 072:
                                model.title = NSLocalizedString(@"电费", nil);
                                break;
                            case 010:
                                model.title = NSLocalizedString(@"取暖费", nil);
                                break;
                            case 011:
                                model.title = NSLocalizedString(@"物业", nil);
                                break;
                            case 012:
                                model.title = NSLocalizedString(@"车位", nil);
                                break;
                            case 013:
                                model.title = NSLocalizedString(@"装修", nil);
                                break;
                            case 014:
                                model.title = NSLocalizedString(@"家电", nil);
                                break;
                            case 015:
                                model.title = NSLocalizedString(@"服务", nil);
                                break;
                            case 016:
                                model.title = NSLocalizedString(@"家居", nil);
                                break;
                            case 017:
                                model.title = NSLocalizedString(@"其它", nil);
                                break;
                            default:
                                break;
                        }
                        [weakSelf.dataArray addObject:model];
                    }
                    self.pieChartView.data = [self setData];
                }else{
                    [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据，请点击加号添加", nil)];
                }
            }else{
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据，请点击加号添加", nil)];
            }
        }
    }];
}
- (PieChartData *)setData{
    NSMutableArray *datas = [[NSMutableArray alloc] init];
    NSMutableArray *titles = [[NSMutableArray alloc] init];
    CGFloat totalNum = 0;
    for (int i = 0; i < self.dataArray.count; i++) {
        PKBudgetModel *model = self.dataArray[i];
        [titles addObject:model.title];
        CGFloat num = [model.content floatValue];
        totalNum += num;
    }
    for (int i = 0; i < self.dataArray.count; i++) {
        PKBudgetModel *model = self.dataArray[i];
        CGFloat num = [model.content floatValue];
        NSUInteger numN = (num / totalNum) * 100;
        [datas addObject:[NSString stringWithFormat:@"%ld",numN]];
    }
    NSLog(@"datas:%@",datas);
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < datas.count; i++) {
        PieChartDataEntry *entry = [[PieChartDataEntry alloc] initWithValue:[datas[i] integerValue] label:titles[i]];
        [array addObject:entry];
    }
    PieChartDataSet *set = [[PieChartDataSet alloc] initWithEntries:array label:@""];
    //颜色(每个扇形区域可以单独设置颜色)
    NSMutableArray *colors = [[NSMutableArray alloc] init];
    for (int i = 0; i < datas.count; i++) {
        int R = (arc4random() % 256) ;
        int G = (arc4random() % 256) ;
        int B = (arc4random() % 256) ;
        [colors addObject:PKH_Color(R, G, B, 1)];
    }
    set.colors = [colors copy];
    set.entryLabelFont = [UIFont systemFontOfSize:20];
    set.entryLabelColor = [UIColor blackColor];
    set.drawIconsEnabled = NO;
    //    当饼状图带折线时，dataSet.yValuePosition 数值的位置只有设置为
    //    PieChartValuePositionOutsideSlice，折线才会显示，valueLine相关属性才有用
    set.drawValuesEnabled = YES;
    set.valueFont = [UIFont systemFontOfSize:14];
    set.valueColors = [colors copy];
    set.yValuePosition = PieChartValuePositionOutsideSlice;
    set.valueLineColor = UIColor.greenColor;
    //格式化
    NSNumberFormatter *pFormatter = [[NSNumberFormatter alloc] init];
    pFormatter.numberStyle = NSNumberFormatterPercentStyle;
    pFormatter.maximumFractionDigits = 1;
    pFormatter.multiplier = @1.f;
    pFormatter.percentSymbol = @" %";
    set.valueFormatter = [[ChartDefaultValueFormatter alloc] initWithFormatter:pFormatter];
    //相邻区块之间的间距
    set.sliceSpace = 1;
    //扇形区域放大范围
    set.selectionShift = 8;
    //动画开始的角度
    PieChartData *data = [[PieChartData alloc] initWithDataSet:set];
    return data;
}
- (void)addBtnClick:(UIButton *)sender{
    PKAddBudgetViewController *vc = [[PKAddBudgetViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)addButton{
    if (!_addButton) {
        _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateNormal];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateSelected];
        [_addButton addTarget:self action:@selector(addBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _addButton;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (NSMutableArray *)titlesArray{
    if (!_titlesArray) {
        _titlesArray = [[NSMutableArray alloc] init];
    }
    return _titlesArray;
}
- (PieChartView *)pieChartView{
    if (!_pieChartView) {
        _pieChartView = [[PieChartView alloc] init];
        [_pieChartView setExtraOffsetsWithLeft:20 top:0 right:20 bottom:0];//饼状图距离边缘的间隙
        _pieChartView.usePercentValuesEnabled = YES;//是否根据所提供的数据, 将显示数据转换为百分比格式
        _pieChartView.dragDecelerationEnabled = YES;//拖拽饼状图后是否有惯性效果
        _pieChartView.drawCenterTextEnabled = YES;//是否显示区块文本
        _pieChartView.drawHoleEnabled = NO;//饼状图是否是空心
        _pieChartView.legend.maxSizePercent = 1;//图例在饼状图中的大小占比, 这会影响图例的宽高
        _pieChartView.legend.formToTextSpace = 5;//文本间隔
        _pieChartView.legend.font = [UIFont systemFontOfSize:12];//字体大小
        _pieChartView.legend.textColor = [UIColor grayColor];//字体颜色
//        _pieChartView.legend.position = ChartLegendPositionBelowChartCenter;//图例在饼状图中的位置
        _pieChartView.legend.form = ChartLegendFormCircle;//图示样式: 方形、线条、圆形
        _pieChartView.legend.formSize = 15;//图示大小
        [self.view addSubview:_pieChartView];
        [_pieChartView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(PKWIDTH - 60, PKWIDTH - 60));
            make.center.mas_equalTo(self.view);
        }];
    }
    return _pieChartView;
}
@end
