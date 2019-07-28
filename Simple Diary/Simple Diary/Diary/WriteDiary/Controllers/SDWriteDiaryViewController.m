//
//  SDWriteDiaryViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDWriteDiaryViewController.h"
#import "SDWriteDiaryViewController.h"
#import "SDJournalEditingToolbar.h"
#import "SDTextSetView.h"
#import "SDTextThemeView.h"
#import "SDTextPictureView.h"
#import "SDTextWeatherView.h"
#import "SDWriteDiaryModel.h"
@interface SDWriteDiaryViewController()<UITextViewDelegate>
@property(nonatomic, strong)UIButton *completeButton;
@property(nonatomic, strong)SDJournalEditingToolbar *editingToolbar;
@property(nonatomic, strong)NSMutableArray<ImageModel *> *selectImagesArray;
@property(nonatomic, strong)NSString *locationInformationString;
@property(nonatomic, strong)NSString *weatherInformationString;
@property(nonatomic, strong)SDWriteDiaryModel *releaseModel;
@end

@implementation SDWriteDiaryViewController
+ (SDWriteDiaryViewController *)shareInstance{
    static SDWriteDiaryViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[SDWriteDiaryViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"写日记", nil);
    // 添加通知监听见键盘弹出/退出
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAction:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAction:) name:UIKeyboardWillHideNotification object:nil];
    [self setContentView];
    [self setGestureRecognizer];
    [self.textView becomeFirstResponder];
}
// 点击非TextField区域取消第一响应者
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.textView resignFirstResponder];
}
// 键盘监听事件
- (void)keyboardAction:(NSNotification*)sender{
    // 通过通知对象获取键盘frame: [value CGRectValue]
    NSDictionary *useInfo = [sender userInfo];
    NSValue *value = [useInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    // <注意>具有约束的控件通过改变约束值进行frame的改变处理
    if([sender.name isEqualToString:UIKeyboardWillShowNotification]){
        [UIView animateWithDuration:1.5 animations:^{
            [self.textView layoutIfNeeded];
            [self.view layoutSubviews];
        }];
        [self.textView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(-285);
        }];
        }else{
            [UIView animateWithDuration:1.5 animations:^{
                [self.textView layoutIfNeeded];
                [self.view layoutSubviews];
            }];
            [self.textView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(0);
            }];
        }
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)SD_setupNavigationItems{
    [super SD_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *completeItem = [[UIBarButtonItem alloc] initWithCustomView:self.completeButton];
    self.navigationItem.rightBarButtonItem = completeItem;
}
- (void)setContentView{
    [self.view addSubview:self.editingToolbar];
    [self.view addSubview:self.textView];
    [self.editingToolbar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.height.mas_equalTo(4 * 90);
    }];
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(0);
    }];
    self.releaseModel.fontSizeString = [NSString stringWithFormat:@"%lf",self.editingToolbar.textSetView.fontSize];
    self.releaseModel.fontRGBDictionary = self.editingToolbar.textSetView.fontRGBDictionary;
    self.releaseModel.themeRGBDictionary = self.editingToolbar.textThemeView.themeRGBDictionary;
    self.releaseModel.locationInformationString = self.editingToolbar.textWeatherView.locationInformationString;
    self.releaseModel.weatherInformationString = self.editingToolbar.textWeatherView.weatherInformationString;
    
}
- (void)setGestureRecognizer{
    UISwipeGestureRecognizer *rightRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [rightRecognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    [self.view addGestureRecognizer:rightRecognizer];
    UISwipeGestureRecognizer *leftRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [leftRecognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    [self.view addGestureRecognizer:leftRecognizer];
    UISwipeGestureRecognizer *upRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [upRecognizer setDirection:(UISwipeGestureRecognizerDirectionUp)];
    [self.view addGestureRecognizer:upRecognizer];
    UISwipeGestureRecognizer *downRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [downRecognizer setDirection:(UISwipeGestureRecognizerDirectionDown)];
    [self.view addGestureRecognizer:downRecognizer];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    self.releaseModel.content = self.textView.text;
    NSDate *nowDate = [[NSDate alloc] init];
    self.releaseModel.dateString = [self dateToString:nowDate withDateFormat:@"yyyy-MM-dd HH:mm"];
    NSInteger weekDay = [CalendarTool convertDateToWeekDay:nowDate];
    switch (weekDay) {
        case 0:
            self.releaseModel.weekDayString = @"星期日";
            break;
        case 1:
            self.releaseModel.weekDayString = @"星期一";
            break;
        case 2:
            self.releaseModel.weekDayString = @"星期二";
            break;
        case 3:
            self.releaseModel.weekDayString = @"星期三";
            break;
        case 4:
            self.releaseModel.weekDayString = @"星期四";
            break;
        case 5:
            self.releaseModel.weekDayString = @"星期五";
            break;
        case 6:
            self.releaseModel.weekDayString = @"星期六";
            break;
        default:
            break;
    }
    NSDictionary *jsonDictionary = (NSDictionary *)[self.releaseModel yy_modelToJSONObject];
    NSLog(@"写日记完成后的数据：%@",jsonDictionary);
}
//日期格式转字符串
- (NSString *)dateToString:(NSDate *)date withDateFormat:(NSString *)format{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSString *strDate = [dateFormatter stringFromDate:date];
    return strDate;
}
- (void)handleSwipeFrom:(UISwipeGestureRecognizer*)recognizer{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
        NSLog(@"swipe down");
    }
    if(recognizer.direction ==UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"swipe up");
    }
    if(recognizer.direction ==UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"swipe left");
    }
    if(recognizer.direction ==UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"swipe right");
    }
    [self.view endEditing:YES];
}
#pragma mark - getters
- (UIButton *)completeButton{
    if (!_completeButton) {
        _completeButton = [[UIButton alloc] init];
        [_completeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_completeButton setImage:[UIImage imageNamed:@"SD_complete"] forState:UIControlStateNormal];
    }
    return _completeButton;
}
- (NSMutableArray<ImageModel *> *)selectImagesArray{
    if (!_selectImagesArray) {
        _selectImagesArray = [[NSMutableArray alloc] init];
    }
    return _selectImagesArray;
}
- (SDJournalEditingToolbar *)editingToolbar{
    if (!_editingToolbar) {
        _editingToolbar = [[SDJournalEditingToolbar alloc] init];
        _editingToolbar.superVC = self;
        __weak typeof(self) weakSelf = self;
        _editingToolbar.editingToolbarBlock = ^(SDJournalEditingToolbar * _Nonnull editingToolbar) {
            if (editingToolbar.completetype == editingToolbarCompleteTypeLift) {
                if (editingToolbar.isExpand) {
                    editingToolbar.contentView.hidden = NO;
                    weakSelf.textView.hidden = YES;
                }else{
                    editingToolbar.contentView.hidden = YES;
                    weakSelf.textView.hidden = NO;
                    weakSelf.textView.font = [UIFont systemFontOfSize:editingToolbar.textSetView.fontSize];
                    weakSelf.releaseModel.fontSizeString = [NSString stringWithFormat:@"%lf",editingToolbar.textSetView.fontSize];
                    weakSelf.textView.textColor = editingToolbar.textSetView.fontColor;
                    weakSelf.releaseModel.fontRGBDictionary = editingToolbar.textSetView.fontRGBDictionary;
                    weakSelf.textView.backgroundColor = editingToolbar.textThemeView.themeColor;
                    weakSelf.releaseModel.themeRGBDictionary = editingToolbar.textThemeView.themeRGBDictionary;
                    if (weakSelf.selectImagesArray.count) {
                        [weakSelf.selectImagesArray removeAllObjects];
                    }
                    [weakSelf.selectImagesArray addObjectsFromArray:editingToolbar.textPictureView.selectArray];
                    weakSelf.locationInformationString = editingToolbar.textWeatherView.locationInformationString;
                weakSelf.releaseModel.locationInformationString = editingToolbar.textWeatherView.locationInformationString;
                    weakSelf.weatherInformationString = editingToolbar.textWeatherView.weatherInformationString;
                weakSelf.releaseModel.weatherInformationString = editingToolbar.textWeatherView.weatherInformationString;

                }
            }
        };
    }
    return _editingToolbar;
}
- (UITextView *)textView{
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        _textView.delegate = self;
        [_textView setFont:[UIFont systemFontOfSize:17]];
        [_textView setTextColor:[UIColor blackColor]];
        [_textView setBackgroundColor:SDH_Color(225, 225, 225, 1)];
    }
    return _textView;
}
- (SDWriteDiaryModel *)releaseModel{
    if (!_releaseModel) {
        _releaseModel = [[SDWriteDiaryModel alloc] init];
    }
    return _releaseModel;
}
@end
