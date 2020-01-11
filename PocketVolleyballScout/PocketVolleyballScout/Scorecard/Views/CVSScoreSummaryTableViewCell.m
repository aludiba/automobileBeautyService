//
//  CVSScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSScoreSummaryTableViewCell.h"
#import "CVSScorecardViewModel.h"

@interface CVSScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *CVSFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *CVSFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *CVSSecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *CVSSecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *CVSThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *CVSThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *CVSFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *CVSFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *CVSFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *CVSFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *CVSTotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *CVSTotalScoreContentLbl;//总比分内容
@end

@implementation CVSScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.CVSFirstTitleLbl];
        [self.contentView addSubview:self.CVSFirstContentLbl];
        [self.contentView addSubview:self.CVSSecondTitleLbl];
        [self.contentView addSubview:self.CVSSecondContentLbl];
        [self.contentView addSubview:self.CVSThirdTitleLbl];
        [self.contentView addSubview:self.CVSThirdContentLbl];
        [self.contentView addSubview:self.CVSFourthTitleLbl];
        [self.contentView addSubview:self.CVSFourthContentLbl];
        [self.contentView addSubview:self.CVSFifthTitleLbl];
        [self.contentView addSubview:self.CVSFifthContentLbl];
        [self.contentView addSubview:self.CVSTotalScoreTitleLbl];
        [self.contentView addSubview:self.CVSTotalScoreContentLbl];
        
        [self.CVSFirstTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(CVSWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CVSFirstContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CVSFirstTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
           make.top.equalTo(self.contentView).offset(10);
                make.height.mas_equalTo(20);
        }];
        [self.CVSSecondTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.CVSFirstTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CVSWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CVSSecondContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CVSSecondTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CVSFirstContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CVSThirdTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.CVSSecondTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CVSWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CVSThirdContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CVSThirdTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CVSSecondContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CVSFourthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.CVSThirdTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CVSWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CVSFourthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CVSFourthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CVSThirdContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CVSFifthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.CVSFourthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CVSWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CVSFifthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CVSFifthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CVSFourthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CVSTotalScoreTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.CVSFifthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CVSWIDTH);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.CVSTotalScoreContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CVSTotalScoreTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CVSFifthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setCVSModel:(CVSScorecardViewModel *)CVSModel{
    _CVSModel = CVSModel;
    for (int i = 0; i < _CVSModel.CVSBureauPointsArray.count; i++) {
        CVSBureauPointsModel *bureauPointsModel = _CVSModel.CVSBureauPointsArray[i];
        if (bureauPointsModel.CVSIndex == 0) {
            if (bureauPointsModel.CVStBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CVSFirstContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CVStBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CVSIndex == 1){
            if (bureauPointsModel.CVStBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CVSSecondContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CVStBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CVSIndex == 2){
            if (bureauPointsModel.CVStBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CVSThirdContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CVStBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CVSIndex == 3){
            if (bureauPointsModel.CVStBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CVSFourthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CVStBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CVSIndex == 4){
            if (bureauPointsModel.CVStBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CVSFifthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CVStBureauScoreString,deadEvenString];
            }
        }
    }
    if (_CVSModel.totalAcoreString.length) {
        self.CVSTotalScoreContentLbl.text = _CVSModel.totalAcoreString;
    }
    CGSize size = [self.CVSFirstTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CVSFirstTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CVSFirstTitleLbl layoutIfNeeded];
    size = [self.CVSSecondTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CVSSecondTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CVSSecondTitleLbl layoutIfNeeded];
    size = [self.CVSThirdTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CVSThirdTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CVSThirdTitleLbl layoutIfNeeded];
    size = [self.CVSFourthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CVSFourthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CVSFourthTitleLbl layoutIfNeeded];
    size = [self.CVSFifthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CVSFifthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CVSFifthTitleLbl layoutIfNeeded];
    size = [self.CVSTotalScoreTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CVSTotalScoreTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CVSTotalScoreTitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)CVSFirstTitleLbl{
    if (!_CVSFirstTitleLbl) {
        _CVSFirstTitleLbl = [[UILabel alloc] init];
        [_CVSFirstTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CVSFirstTitleLbl.textColor = [UIColor blackColor];
        _CVSFirstTitleLbl.backgroundColor = [UIColor cyanColor];
        _CVSFirstTitleLbl.numberOfLines = 0;
        _CVSFirstTitleLbl.text = NSLocalizedString(@"第一局", nil);
        [_CVSFirstTitleLbl sizeToFit];
    }
    return _CVSFirstTitleLbl;
}
- (UILabel *)CVSFirstContentLbl{
    if (!_CVSFirstContentLbl) {
        _CVSFirstContentLbl = [[UILabel alloc] init];
        [_CVSFirstContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CVSFirstContentLbl.textColor = [UIColor blackColor];
        _CVSFirstContentLbl.backgroundColor = [UIColor cyanColor];
        _CVSFirstContentLbl.numberOfLines = 0;
        _CVSFirstContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CVSFirstContentLbl sizeToFit];
    }
    return _CVSFirstContentLbl;
}
- (UILabel *)CVSSecondTitleLbl{
    if (!_CVSSecondTitleLbl) {
        _CVSSecondTitleLbl = [[UILabel alloc] init];
        [_CVSSecondTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CVSSecondTitleLbl.textColor = [UIColor blackColor];
        _CVSSecondTitleLbl.backgroundColor = [UIColor cyanColor];
        _CVSSecondTitleLbl.numberOfLines = 0;
        _CVSSecondTitleLbl.text = NSLocalizedString(@"第二局", nil);
        [_CVSSecondTitleLbl sizeToFit];
    }
    return _CVSSecondTitleLbl;
}
- (UILabel *)CVSSecondContentLbl{
    if (!_CVSSecondContentLbl) {
        _CVSSecondContentLbl = [[UILabel alloc] init];
        [_CVSSecondContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CVSSecondContentLbl.textColor = [UIColor blackColor];
        _CVSSecondContentLbl.backgroundColor = [UIColor cyanColor];
        _CVSSecondContentLbl.numberOfLines = 0;
        _CVSSecondContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CVSSecondContentLbl sizeToFit];
    }
    return _CVSSecondContentLbl;
}
- (UILabel *)CVSThirdTitleLbl{
    if (!_CVSThirdTitleLbl) {
        _CVSThirdTitleLbl = [[UILabel alloc] init];
        [_CVSThirdTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CVSThirdTitleLbl.textColor = [UIColor blackColor];
        _CVSThirdTitleLbl.backgroundColor = [UIColor cyanColor];
        _CVSThirdTitleLbl.numberOfLines = 0;
        _CVSThirdTitleLbl.text = NSLocalizedString(@"第三局", nil);
        [_CVSThirdTitleLbl sizeToFit];
    }
    return _CVSThirdTitleLbl;
}
- (UILabel *)CVSThirdContentLbl{
    if (!_CVSThirdContentLbl) {
        _CVSThirdContentLbl = [[UILabel alloc] init];
        [_CVSThirdContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CVSThirdContentLbl.textColor = [UIColor blackColor];
        _CVSThirdContentLbl.backgroundColor = [UIColor cyanColor];
        _CVSThirdContentLbl.numberOfLines = 0;
        _CVSThirdContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CVSThirdContentLbl sizeToFit];
    }
    return _CVSThirdContentLbl;
}
- (UILabel *)CVSFourthTitleLbl{
    if (!_CVSFourthTitleLbl) {
        _CVSFourthTitleLbl = [[UILabel alloc] init];
        [_CVSFourthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CVSFourthTitleLbl.textColor = [UIColor blackColor];
        _CVSFourthTitleLbl.backgroundColor = [UIColor cyanColor];
        _CVSFourthTitleLbl.numberOfLines = 0;
        _CVSFourthTitleLbl.text = NSLocalizedString(@"第四局", nil);
        [_CVSFourthTitleLbl sizeToFit];
    }
    return _CVSFourthTitleLbl;
}
- (UILabel *)CVSFourthContentLbl{
    if (!_CVSFourthContentLbl) {
        _CVSFourthContentLbl = [[UILabel alloc] init];
        [_CVSFourthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CVSFourthContentLbl.textColor = [UIColor blackColor];
        _CVSFourthContentLbl.backgroundColor = [UIColor cyanColor];
        _CVSFourthContentLbl.numberOfLines = 0;
        _CVSFourthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CVSFourthContentLbl sizeToFit];
    }
    return _CVSFourthContentLbl;
}
- (UILabel *)CVSFifthTitleLbl{
    if (!_CVSFifthTitleLbl) {
        _CVSFifthTitleLbl = [[UILabel alloc] init];
        [_CVSFifthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CVSFifthTitleLbl.textColor = [UIColor blackColor];
        _CVSFifthTitleLbl.backgroundColor = [UIColor cyanColor];
        _CVSFifthTitleLbl.numberOfLines = 0;
        _CVSFifthTitleLbl.text = NSLocalizedString(@"第五局", nil);
        [_CVSFifthTitleLbl sizeToFit];
    }
    return _CVSFifthTitleLbl;
}
- (UILabel *)CVSFifthContentLbl{
    if (!_CVSFifthContentLbl) {
        _CVSFifthContentLbl = [[UILabel alloc] init];
        [_CVSFifthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CVSFifthContentLbl.textColor = [UIColor blackColor];
        _CVSFifthContentLbl.backgroundColor = [UIColor cyanColor];
        _CVSFifthContentLbl.numberOfLines = 0;
        _CVSFifthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CVSFifthContentLbl sizeToFit];
    }
    return _CVSFifthContentLbl;
}
- (UILabel *)CVSTotalScoreTitleLbl{
    if (!_CVSTotalScoreTitleLbl) {
        _CVSTotalScoreTitleLbl = [[UILabel alloc] init];
        [_CVSTotalScoreTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CVSTotalScoreTitleLbl.textColor = [UIColor blackColor];
        _CVSTotalScoreTitleLbl.backgroundColor = [UIColor cyanColor];
        _CVSTotalScoreTitleLbl.numberOfLines = 0;
        _CVSTotalScoreTitleLbl.text = NSLocalizedString(@"总比分", nil);
        [_CVSTotalScoreTitleLbl sizeToFit];
    }
    return _CVSTotalScoreTitleLbl;
}
- (UILabel *)CVSTotalScoreContentLbl{
    if (!_CVSTotalScoreContentLbl) {
        _CVSTotalScoreContentLbl = [[UILabel alloc] init];
        [_CVSTotalScoreContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CVSTotalScoreContentLbl.textColor = [UIColor blackColor];
        _CVSTotalScoreContentLbl.backgroundColor = [UIColor cyanColor];
        _CVSTotalScoreContentLbl.numberOfLines = 0;
        _CVSTotalScoreContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CVSTotalScoreContentLbl sizeToFit];
    }
    return _CVSTotalScoreContentLbl;
}
@end
