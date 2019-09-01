//
//  ABHistoryTableViewCell.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/22.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABHistoryTableViewCell.h"
#import "ABMeasurementModel.h"
@interface ABHistoryTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *positionLabel;
@property(nonatomic, strong)UILabel *dateLabel;
@property(nonatomic, strong)UIView *dbBackView;
@property(nonatomic, strong)UILabel *maxDBLabel;
@property(nonatomic, strong)UILabel *maxDBTitleLabel;
@property(nonatomic, strong)UILabel *averageDBLabel;
@property(nonatomic, strong)UILabel *averageDBTitleLabel;
@property(nonatomic, assign)CGFloat titleHeight;
@property(nonatomic, assign)CGFloat positionHeight;
@end
@implementation ABHistoryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor =  ABH_Color(21, 24, 46, 1);
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.positionLabel];
        [self.contentView addSubview:self.dateLabel];
        [self.contentView addSubview:self.dbBackView];
        [self.dbBackView addSubview:self.maxDBLabel];
        [self.dbBackView addSubview:self.maxDBTitleLabel];
        [self.dbBackView addSubview:self.averageDBLabel];
        [self.dbBackView addSubview:self.averageDBTitleLabel];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(10);
            make.trailing.equalTo(self.contentView).offset(-15);
            make.height.mas_equalTo(ABHEIGHT);
        }];
        [self.positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.titleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo((ABWIDTH - 30) * 0.5);
            make.height.mas_equalTo(ABHEIGHT);
        }];
        [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.top.equalTo(self.titleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo((ABWIDTH - 30) * 0.5);
            make.height.mas_equalTo(15);
        }];
        [self.dbBackView mas_makeConstraints:^(MASConstraintMaker *make) {            make.leading.equalTo(self.contentView).offset(15);
            
       make.trailing.equalTo(self.contentView).offset(-15);
            make.top.equalTo(self.positionLabel.mas_bottom).offset(20);
            make.height.mas_equalTo(60);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.maxDBLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.dbBackView).offset(30);
            
            make.top.equalTo(self.dbBackView).offset(10);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(16);
        }];
        [self.maxDBTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.dbBackView).offset(25);
            
            make.top.equalTo(self.maxDBLabel.mas_bottom).offset(10);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(14);
        }];
        [self.averageDBLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.dbBackView).offset(-30);
            
            make.top.equalTo(self.dbBackView).offset(10);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(16);
        }];
        [self.averageDBTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.dbBackView).offset(-25);
            
            make.top.equalTo(self.averageDBLabel.mas_bottom).offset(10);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(14);
        }];
    }
    return self;
}
- (void)setModel:(ABMeasurementModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    CGSize size = [self.titleLbl sizeThatFits:CGSizeMake(ABWIDTH - 30, MAXFLOAT)];
    self.titleHeight = size.height;
    [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(self.titleHeight);
    }];
    self.positionLabel.text = _model.position;
    size = [self.positionLabel sizeThatFits:CGSizeMake((ABWIDTH - 30) * 0.5, MAXFLOAT)];
    self.positionHeight = size.height;
    [self.positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(self.positionHeight);
    }];
    [self.titleLbl layoutIfNeeded];
    [self.positionLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    NSString *dateString = [ABUIUtilities ABformattedTimeStringWithDate:_model.date format:@"yyyy/MM/dd HH:mm:ss"];
    self.dateLabel.text = dateString;
    self.maxDBLabel.text = [NSString stringWithFormat:@"%d",[_model.maxDB intValue]];
    self.averageDBLabel.text = [NSString stringWithFormat:@"%d",[_model.averageDB intValue]];
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.backgroundColor = ABH_Color(21, 24, 46, 1);
        _titleLbl.textColor = [UIColor whiteColor];
        _titleLbl.font = [UIFont systemFontOfSize:20];
        _titleLbl.numberOfLines = 0;
        [_titleLbl sizeToFit];
    }
    return _titleLbl;
}
- (UILabel *)positionLabel{
    if (!_positionLabel) {
        _positionLabel = [[UILabel alloc] init];
        _positionLabel.backgroundColor = ABH_Color(21, 24, 46, 1);
        _positionLabel.textColor = ABH_Color(108, 111, 118, 1);
        _positionLabel.font = [UIFont systemFontOfSize:14];
        _positionLabel.numberOfLines = 0;
        [_positionLabel sizeToFit];
    }
    return _positionLabel;
}
- (UILabel *)dateLabel{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] init];
        _dateLabel.backgroundColor = ABH_Color(21, 24, 46, 1);
        _dateLabel.textColor = ABH_Color(108, 111, 118, 1);
        _dateLabel.font = [UIFont systemFontOfSize:14];
        _dateLabel.textAlignment = NSTextAlignmentRight;
    }
    return _dateLabel;
}
- (UIView *)dbBackView{
    if (!_dbBackView) {
        _dbBackView = [[UIView alloc] init];
        _dbBackView.backgroundColor = ABH_Color(25, 26, 51, 1);
    }
    return _dbBackView;
}
- (UILabel *)maxDBLabel{
    if (!_maxDBLabel) {
        _maxDBLabel = [[UILabel alloc] init];
        _maxDBLabel.backgroundColor = ABH_Color(25, 26, 51, 1);
        _maxDBLabel.textColor = [UIColor whiteColor];
        _maxDBLabel.font = [UIFont systemFontOfSize:15];
        _maxDBLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _maxDBLabel;
}
- (UILabel *)maxDBTitleLabel{
    if (!_maxDBTitleLabel) {
        _maxDBTitleLabel = [[UILabel alloc] init];
        _maxDBTitleLabel.backgroundColor = ABH_Color(25, 26, 51, 1);
        _maxDBTitleLabel.textColor = ABH_Color(93, 94, 106, 1);
        _maxDBTitleLabel.font = [UIFont systemFontOfSize:13];
        _maxDBTitleLabel.text = NSLocalizedString(@"最大分贝", nil);
        _maxDBTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _maxDBTitleLabel;
}
- (UILabel *)averageDBLabel{
    if (!_averageDBLabel) {
        _averageDBLabel = [[UILabel alloc] init];
        _averageDBLabel.backgroundColor = ABH_Color(25, 26, 51, 1);
        _averageDBLabel.textColor = [UIColor whiteColor];
        _averageDBLabel.font = [UIFont systemFontOfSize:15];
        _averageDBLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _averageDBLabel;
}
- (UILabel *)averageDBTitleLabel{
    if (!_averageDBTitleLabel) {
        _averageDBTitleLabel = [[UILabel alloc] init];
        _averageDBTitleLabel.backgroundColor = ABH_Color(25, 26, 51, 1);
        _averageDBTitleLabel.textColor =  ABH_Color(93, 94, 106, 1);
        _averageDBTitleLabel.font = [UIFont systemFontOfSize:13];
        _averageDBTitleLabel.text = NSLocalizedString(@"平均分贝", nil);
        _averageDBTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _averageDBTitleLabel;
}
@end
