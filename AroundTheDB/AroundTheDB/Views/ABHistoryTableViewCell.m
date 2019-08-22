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
@end
@implementation ABHistoryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
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
            make.height.mas_equalTo(21);
        }];
        [self.positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.titleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo((ABWIDTH - 30) * 0.5);
            make.height.mas_equalTo(15);
        }];
        [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.top.equalTo(self.titleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo((ABWIDTH - 30) * 0.5);
            make.height.mas_equalTo(15);
        }];
        [self.dbBackView mas_makeConstraints:^(MASConstraintMaker *make) {            make.leading.equalTo(self.contentView).offset(15);
            
       make.trailing.equalTo(self.contentView).offset(-15);
            make.top.equalTo(self.dateLabel.mas_bottom).offset(20);
            make.height.mas_equalTo(60);
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
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor whiteColor];
        _titleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _titleLbl;
}
- (UILabel *)positionLabel{
    if (!_positionLabel) {
        _positionLabel = [[UILabel alloc] init];
        _positionLabel.textColor = ABH_Color(108, 111, 118, 1);
        _positionLabel.font = [UIFont systemFontOfSize:14];
    }
    return _positionLabel;
}
- (UILabel *)dateLabel{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] init];
        _dateLabel.textColor = ABH_Color(108, 111, 118, 1);
        _dateLabel.font = [UIFont systemFontOfSize:14];
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
        _maxDBLabel.textColor = [UIColor whiteColor];
        _maxDBLabel.font = [UIFont systemFontOfSize:15];
        _maxDBLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _maxDBLabel;
}
- (UILabel *)maxDBTitleLabel{
    if (_maxDBTitleLabel) {
        _maxDBTitleLabel = [[UILabel alloc] init];
        _maxDBTitleLabel.textColor = ABH_Color(108, 111, 118, 1);
        _maxDBTitleLabel.font = [UIFont systemFontOfSize:13];
        _maxDBTitleLabel.text = @"最大分贝";
        _maxDBTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _maxDBTitleLabel;
}
- (UILabel *)averageDBLabel{
    if (!_averageDBLabel) {
        _averageDBLabel = [[UILabel alloc] init];
        _averageDBLabel.textColor = [UIColor whiteColor];
        _averageDBLabel.font = [UIFont systemFontOfSize:15];
        _averageDBLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _averageDBLabel;
}
- (UILabel *)averageDBTitleLabel{
    if (_averageDBTitleLabel) {
        _averageDBTitleLabel = [[UILabel alloc] init];
        _averageDBTitleLabel.textColor = ABH_Color(108, 111, 118, 1);
        _averageDBTitleLabel.font = [UIFont systemFontOfSize:13];
        _averageDBTitleLabel.text = @"平均分贝";
        _averageDBTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _averageDBTitleLabel;
}
@end
