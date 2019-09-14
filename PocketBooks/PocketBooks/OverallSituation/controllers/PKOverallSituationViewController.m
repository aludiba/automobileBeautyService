//
//  PKOverallSituationViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKOverallSituationViewController.h"
#import "PocketBooks-Bridging-Header.h"
#import "PKAddBudgetViewController.h"
#import "PKOverallSituationHeadView.h"
#import "PKBudgetModel.h"
#import "PKOverallSituationModel.h"
@interface PKOverallSituationViewController ()<IChartAxisValueFormatter>
@property(nonatomic, assign)NSUInteger totalNumber;
@property(nonatomic, assign)NSUInteger limitNumber;
@property(nonatomic, strong)UIButton *addButton;
@property(nonatomic, strong)PKOverallSituationModel *overallSituationMode;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)NSMutableArray *titles;
@property(nonatomic, strong)PKOverallSituationHeadView *headView;
@property(nonatomic, strong)BarChartView *barChartView;
@end

@implementation PKOverallSituationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    self.title = NSLocalizedString(@"总体", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadData];
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.addButton];
    self.navigationItem.rightBarButtonItem = addButtonItem;
}
- (void)loadData{
    self.totalNumber = 0;
    self.limitNumber = 0;
    [self.dataArray removeAllObjects];
    [self.overallSituationMode.dataArray removeAllObjects];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKBudget"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }else{
            if (array.count) {
                NSDate *nowDate = [[NSDate alloc] init];
                NSString *nowDateStr = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"MM"];
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    NSDate *date = [obj objectForKey:@"date"];
                    NSString *dateStr = [PKUIUtilities PKformattedTimeStringWithDate:date format:@"MM"];
                    if ([dateStr isEqualToString:nowDateStr]) {
                        NSArray *arr = [obj objectForKey:@"data"];
                        
                        for (int j = 0; j < arr.count; j++) {
                            NSDictionary *dic = arr[j];
                            PKBudgetModel *model = [PKBudgetModel yy_modelWithDictionary:dic];
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
                            [self.dataArray addObject:model];
                        }
                        
                    }
                }
                for (int i = 0; i < self.dataArray.count; i++) {
                    PKBudgetModel *model = self.dataArray[i];
                    NSUInteger content = [model.content integerValue];
                    self.totalNumber += content;
//                    self.limitNumber += limit;
                }
                NSUInteger dateNum = [nowDateStr integerValue];
                switch (dateNum) {
                    case 1:
                        self.overallSituationMode.monthString = NSLocalizedString(@"一月", nil);
                        break;
                    case 2:
                        self.overallSituationMode.monthString = NSLocalizedString(@"二月", nil);
                        break;
                    case 3:
                        self.overallSituationMode.monthString = NSLocalizedString(@"三月", nil);
                        break;
                    case 4:
                        self.overallSituationMode.monthString = NSLocalizedString(@"四月", nil);
                        break;
                    case 5:
                        self.overallSituationMode.monthString = NSLocalizedString(@"五月", nil);
                        break;
                    case 6:
                        self.overallSituationMode.monthString = NSLocalizedString(@"六月", nil);
                        break;
                    case 7:
                        self.overallSituationMode.monthString = NSLocalizedString(@"七月", nil);
                        break;
                    case 8:
                        self.overallSituationMode.monthString = NSLocalizedString(@"七月", nil);
                        break;
                    case 9:
                        self.overallSituationMode.monthString = NSLocalizedString(@"九月", nil);
                        break;
                    case 10:
                        self.overallSituationMode.monthString = NSLocalizedString(@"十月", nil);
                        break;
                    case 11:
                        self.overallSituationMode.monthString = NSLocalizedString(@"十一月", nil);
                        break;
                    case 12:
                        self.overallSituationMode.monthString = NSLocalizedString(@"十二月", nil);
                        break;
                    default:
                        break;
                }
                PKBudgetModel *model = [self.dataArray lastObject];
                self.overallSituationMode.totalAmountString = [NSString stringWithFormat:@"%ld %@",self.totalNumber,model.unit];
                BmobObject *obj = [array lastObject];
                NSArray *arr = [obj objectForKey:@"data"];
                for (NSDictionary *dict in arr) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                    [dic setObject:dict[@"title"] forKey:@"title"];
                    [dic setObject:[[NSNumber alloc] initWithInteger:0] forKey:@"combined"];
                    [self.overallSituationMode.dataArray addObject:dic];
                    NSString *limit = dict[@"limits"];
                    NSUInteger limitNum = [limit integerValue];
                    self.limitNumber += limitNum;
                }
                self.overallSituationMode.limitString = [NSString stringWithFormat:@"%@:%ld %@",NSLocalizedString(@"限额", nil),self.limitNumber,model.unit];
                [self setContentView];
            }else{
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据，请点击加号添加", nil)];
            }
        }
    }];
}
- (void)setContentView{
    [self.headView setModel:self.overallSituationMode];
    
    for (PKBudgetModel *model in self.dataArray) {
        for (NSMutableDictionary *dic in self.overallSituationMode.dataArray) {
            NSString *title = dic[@"title"];
            if ([model.title isEqualToString:title]) {
                NSUInteger num = [model.content integerValue];
                NSNumber *currentNum = dic[@"combined"];
                NSUInteger currentN = [currentNum integerValue];
                currentN += num;
                [dic setObject:[NSNumber numberWithInteger:currentN] forKey:@"combined"];
            }
        }
    }
    self.barChartView.data = [self setData];
    [self.barChartView notifyDataSetChanged];
    [self.barChartView.data notifyDataChanged];
}
- (BarChartData *)setData
{
    
    NSMutableArray *yVals = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.overallSituationMode.dataArray.count; i++) {
        NSDictionary *dic = self.overallSituationMode.dataArray[i];
        NSNumber *number = dic[@"combined"];
        int num = [number intValue];
        BarChartDataEntry *entry = [[BarChartDataEntry alloc] initWithX:i y:num];
        [yVals addObject:entry];
        
        NSString *title = dic[@"title"];
        [self.titles addObject:title];
    }
    PKBudgetModel *model = [self.dataArray lastObject];
    BarChartDataSet *set1 = [[BarChartDataSet alloc] initWithEntries:yVals label:[NSString stringWithFormat:@"%@:%@",NSLocalizedString(@"单位", nil),model.unit]];
    [set1 setColor:[UIColor orangeColor]];
    
    [set1 setDrawValuesEnabled:NO];
    [set1 setHighlightEnabled:NO];
    
    NSMutableArray *dataSets = [[NSMutableArray alloc] init];
    [dataSets addObject:set1];
    
    BarChartData*data = [[BarChartData alloc]initWithDataSets:dataSets];
    [data setBarWidth:0.4];
    [data setValueFont:[UIFont systemFontOfSize:10]];
    [data groupBarsFromX: -0.3 groupSpace: 0.15f barSpace: 0.02f];
    return data;
}
- (void)addBtnClick:(UIButton *)sender{
    PKAddBudgetViewController *vc = [[PKAddBudgetViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - <IChartAxisValueFormatter>
- (NSString *)stringForValue:(double)value axis:(ChartAxisBase *)axis {
    return self.titles[(int)value % self.titles.count];
}
#pragma mark - 属性懒加载
- (PKOverallSituationModel *)overallSituationMode{
    if (!_overallSituationMode) {
        _overallSituationMode = [[PKOverallSituationModel alloc] init];
        _overallSituationMode.dataArray = [[NSMutableArray alloc] init];
    }
    return _overallSituationMode;
}
- (NSMutableArray *)titles{
    if (!_titles) {
        _titles = [[NSMutableArray alloc] init];
    }
    return _titles;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UIButton *)addButton{
    if (!_addButton) {
        _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateNormal];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateSelected];
        [_addButton addTarget:self action:@selector(addBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _addButton;
}
- (PKOverallSituationHeadView *)headView{
    if (!_headView) {
        _headView = [[PKOverallSituationHeadView alloc] init];
        [self.view addSubview:_headView];
        [_headView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.height.mas_equalTo(92);
        }];
    }
    return _headView;
}
- (BarChartView *)barChartView{
    if (!_barChartView) {
        _barChartView = [[BarChartView alloc] init];
        _barChartView.frame = CGRectMake(5, 64, PKWIDTH, PKHEIGHT-200 );
        [self.view addSubview:_barChartView];
        [_barChartView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.headView.mas_bottom).offset(20);
            make.leading.equalTo(self.view).offset(15);
            make.trailing.equalTo(self.view).offset(-15);
            make.bottom.equalTo(self.view).offset(-PKHeightTPKBar - 20);
        }];
        [_barChartView  animateWithYAxisDuration:1.0f];
        [_barChartView  animateWithXAxisDuration:1.0f];
        // 是否绘制阴影背景
        _barChartView.drawBarShadowEnabled = NO;
        // 数值显示是否在条柱上面
        _barChartView.drawValueAboveBarEnabled = YES;
        _barChartView.noDataText = @"暂无数据";
        _barChartView.noDataFont = [UIFont systemFontOfSize:15];
        _barChartView.noDataTextColor = [UIColor grayColor];
        // 数值显示是否在条柱上面
        _barChartView.drawValueAboveBarEnabled = YES;
        // 是否画右边坐标轴
        _barChartView.rightAxis.enabled = NO;
        // 是否画图例（图例的具体配置可参照我的饼状图）
        _barChartView.legend.enabled = NO;
        // 是否可以拖拽设置
        _barChartView.dragEnabled = YES;
        // 双击是否缩放
        _barChartView.doubleTapToZoomEnabled = NO;
        // XY轴是否缩放
        _barChartView.scaleXEnabled = NO;//X轴缩放
        _barChartView.scaleYEnabled = NO;//Y轴缩放
        // XY轴是否可以同时缩放
        _barChartView.pinchZoomEnabled = NO;
        // 是否开启描述label
        _barChartView.chartDescription.enabled = NO;
        // 设置浮层
        _barChartView.drawMarkers = YES;
        _barChartView.xAxis.valueFormatter = self;
        
        ChartXAxis *xAxis = self.barChartView.xAxis;
        // X轴的显示位置
        xAxis.labelPosition = XAxisLabelPositionBottom;
        // 是否绘制网格
        xAxis.drawGridLinesEnabled = NO;
        // X轴数值上面的字体 大小
        xAxis.labelFont = [UIFont fontWithName:@"PingFang-SC-Medium" size:12.0f];
        // X轴数值颜色
        xAxis.labelTextColor = [UIColor colorWithRed:153/255.f green:153/255.f blue:153/255.f alpha:1];
        // X轴label宽度
        xAxis.labelWidth = 5;
        // X轴显示的label数量
        xAxis.labelCount = self.overallSituationMode.dataArray.count;
        // 设置虚线样式的网格线
        xAxis.gridLineDashLengths = @[@3.0f, @3.0f];
        // 网格线颜色
        xAxis.gridColor = [UIColor colorWithRed:153/255.f green:153/255.f blue:153/255.f alpha:1];
        // 开启抗锯齿
        xAxis.gridAntialiasEnabled = YES;
        // 从0开始绘画
        xAxis.drawAxisLineEnabled = YES;
        // label位置（像里像外 枚举类型）
        xAxis.labelPosition = 0;
        
        ChartYAxis *leftAxis = self.barChartView.leftAxis;
        // 坐标数值样式
        NSNumberFormatter *leftAxisFormatter = [[NSNumberFormatter alloc] init];
        // Y轴坐标最多为1位小数
        leftAxisFormatter.maximumFractionDigits = 1;
        leftAxis.valueFormatter = [[ChartDefaultAxisValueFormatter alloc] initWithFormatter:leftAxisFormatter];
        // 最大值
        leftAxis.axisMaximum = 3000;
        // 最小值
        leftAxis.axisMinimum = 0;
        // 坐标数值的位置
        leftAxis.labelPosition = YAxisLabelPositionOutsideChart;
        // 数值分割个数
        leftAxis.labelCount = self.overallSituationMode.dataArray.count * 3;
        // 最大值到顶部的范围比
        leftAxis.spaceTop = 0.15;
    }
    return _barChartView;
}
@end
