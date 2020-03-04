//
//  ABScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABScoreSummaryTableViewCell.h"
#import "ABScorecardViewModel.h"

@interface ABScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *ABFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *ABFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *ABSecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *ABSecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *ABThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *ABThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *ABFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *ABFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *ABFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *ABFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *ABTotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *ABTotalScoreContentLbl;//总比分内容
@end

@implementation ABScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.ABFirstTitleLbl];
        [self.contentView addSubview:self.ABFirstContentLbl];
        [self.contentView addSubview:self.ABSecondTitleLbl];
        [self.contentView addSubview:self.ABSecondContentLbl];
        [self.contentView addSubview:self.ABThirdTitleLbl];
        [self.contentView addSubview:self.ABThirdContentLbl];
        [self.contentView addSubview:self.ABFourthTitleLbl];
        [self.contentView addSubview:self.ABFourthContentLbl];
        [self.contentView addSubview:self.ABFifthTitleLbl];
        [self.contentView addSubview:self.ABFifthContentLbl];
        [self.contentView addSubview:self.ABTotalScoreTitleLbl];
        [self.contentView addSubview:self.ABTotalScoreContentLbl];
        
        [self.ABFirstTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(ABWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.ABFirstContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ABFirstTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
           make.top.equalTo(self.contentView).offset(10);
                make.height.mas_equalTo(20);
        }];
        [self.ABSecondTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.ABFirstTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(ABWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.ABSecondContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ABSecondTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.ABFirstContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.ABThirdTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.ABSecondTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(ABWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.ABThirdContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ABThirdTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.ABSecondContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.ABFourthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.ABThirdTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(ABWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.ABFourthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ABFourthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.ABThirdContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.ABFifthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.ABFourthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(ABWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.ABFifthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ABFifthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.ABFourthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.ABTotalScoreTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.ABFifthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(ABWIDTH);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.ABTotalScoreContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ABTotalScoreTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.ABFifthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setABModel:(ABScorecardViewModel *)ABModel{
    _ABModel = ABModel;
    for (int i = 0; i < _ABModel.ABBureauPointsArray.count; i++) {
        ABBureauPointsModel *bureauPointsModel = _ABModel.ABBureauPointsArray[i];
        if (bureauPointsModel.ABIndex == 0) {
            if (bureauPointsModel.ABtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.ABFirstContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.ABtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.ABIndex == 1){
            if (bureauPointsModel.ABtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.ABSecondContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.ABtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.ABIndex == 2){
            if (bureauPointsModel.ABtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.ABThirdContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.ABtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.ABIndex == 3){
            if (bureauPointsModel.ABtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.ABFourthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.ABtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.ABIndex == 4){
            if (bureauPointsModel.ABtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.ABFifthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.ABtBureauScoreString,deadEvenString];
            }
        }
    }
    if (_ABModel.totalAcoreString.length) {
        self.ABTotalScoreContentLbl.text = _ABModel.totalAcoreString;
    }
    CGSize size = [self.ABFirstTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.ABFirstTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ABFirstTitleLbl layoutIfNeeded];
    size = [self.ABSecondTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.ABSecondTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ABSecondTitleLbl layoutIfNeeded];
    size = [self.ABThirdTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.ABThirdTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ABThirdTitleLbl layoutIfNeeded];
    size = [self.ABFourthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.ABFourthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ABFourthTitleLbl layoutIfNeeded];
    size = [self.ABFifthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.ABFifthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ABFifthTitleLbl layoutIfNeeded];
    size = [self.ABTotalScoreTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.ABTotalScoreTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ABTotalScoreTitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)ABFirstTitleLbl{
    if (!_ABFirstTitleLbl) {
        _ABFirstTitleLbl = [[UILabel alloc] init];
        [_ABFirstTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _ABFirstTitleLbl.textColor = [UIColor blackColor];
        _ABFirstTitleLbl.backgroundColor = [UIColor cyanColor];
        _ABFirstTitleLbl.numberOfLines = 0;
        _ABFirstTitleLbl.text = NSLocalizedString(@"第一局", nil);
        [_ABFirstTitleLbl sizeToFit];
    }
    return _ABFirstTitleLbl;
}
- (UILabel *)ABFirstContentLbl{
    if (!_ABFirstContentLbl) {
        _ABFirstContentLbl = [[UILabel alloc] init];
        [_ABFirstContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _ABFirstContentLbl.textColor = [UIColor blackColor];
        _ABFirstContentLbl.backgroundColor = [UIColor cyanColor];
        _ABFirstContentLbl.numberOfLines = 0;
        _ABFirstContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_ABFirstContentLbl sizeToFit];
    }
    return _ABFirstContentLbl;
}
- (UILabel *)ABSecondTitleLbl{
    if (!_ABSecondTitleLbl) {
        _ABSecondTitleLbl = [[UILabel alloc] init];
        [_ABSecondTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _ABSecondTitleLbl.textColor = [UIColor blackColor];
        _ABSecondTitleLbl.backgroundColor = [UIColor cyanColor];
        _ABSecondTitleLbl.numberOfLines = 0;
        _ABSecondTitleLbl.text = NSLocalizedString(@"第二局", nil);
        [_ABSecondTitleLbl sizeToFit];
    }
    return _ABSecondTitleLbl;
}
- (UILabel *)ABSecondContentLbl{
    if (!_ABSecondContentLbl) {
        _ABSecondContentLbl = [[UILabel alloc] init];
        [_ABSecondContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _ABSecondContentLbl.textColor = [UIColor blackColor];
        _ABSecondContentLbl.backgroundColor = [UIColor cyanColor];
        _ABSecondContentLbl.numberOfLines = 0;
        _ABSecondContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_ABSecondContentLbl sizeToFit];
    }
    return _ABSecondContentLbl;
}
- (UILabel *)ABThirdTitleLbl{
    if (!_ABThirdTitleLbl) {
        _ABThirdTitleLbl = [[UILabel alloc] init];
        [_ABThirdTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _ABThirdTitleLbl.textColor = [UIColor blackColor];
        _ABThirdTitleLbl.backgroundColor = [UIColor cyanColor];
        _ABThirdTitleLbl.numberOfLines = 0;
        _ABThirdTitleLbl.text = NSLocalizedString(@"第三局", nil);
        [_ABThirdTitleLbl sizeToFit];
    }
    return _ABThirdTitleLbl;
}
- (UILabel *)ABThirdContentLbl{
    if (!_ABThirdContentLbl) {
        _ABThirdContentLbl = [[UILabel alloc] init];
        [_ABThirdContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _ABThirdContentLbl.textColor = [UIColor blackColor];
        _ABThirdContentLbl.backgroundColor = [UIColor cyanColor];
        _ABThirdContentLbl.numberOfLines = 0;
        _ABThirdContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_ABThirdContentLbl sizeToFit];
    }
    return _ABThirdContentLbl;
}
- (UILabel *)ABFourthTitleLbl{
    if (!_ABFourthTitleLbl) {
        _ABFourthTitleLbl = [[UILabel alloc] init];
        [_ABFourthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _ABFourthTitleLbl.textColor = [UIColor blackColor];
        _ABFourthTitleLbl.backgroundColor = [UIColor cyanColor];
        _ABFourthTitleLbl.numberOfLines = 0;
        _ABFourthTitleLbl.text = NSLocalizedString(@"第四局", nil);
        [_ABFourthTitleLbl sizeToFit];
    }
    return _ABFourthTitleLbl;
}
- (UILabel *)ABFourthContentLbl{
    if (!_ABFourthContentLbl) {
        _ABFourthContentLbl = [[UILabel alloc] init];
        [_ABFourthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _ABFourthContentLbl.textColor = [UIColor blackColor];
        _ABFourthContentLbl.backgroundColor = [UIColor cyanColor];
        _ABFourthContentLbl.numberOfLines = 0;
        _ABFourthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_ABFourthContentLbl sizeToFit];
    }
    return _ABFourthContentLbl;
}
- (UILabel *)ABFifthTitleLbl{
    if (!_ABFifthTitleLbl) {
        _ABFifthTitleLbl = [[UILabel alloc] init];
        [_ABFifthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _ABFifthTitleLbl.textColor = [UIColor blackColor];
        _ABFifthTitleLbl.backgroundColor = [UIColor cyanColor];
        _ABFifthTitleLbl.numberOfLines = 0;
        _ABFifthTitleLbl.text = NSLocalizedString(@"第五局", nil);
        [_ABFifthTitleLbl sizeToFit];
    }
    return _ABFifthTitleLbl;
}
- (UILabel *)ABFifthContentLbl{
    if (!_ABFifthContentLbl) {
        _ABFifthContentLbl = [[UILabel alloc] init];
        [_ABFifthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _ABFifthContentLbl.textColor = [UIColor blackColor];
        _ABFifthContentLbl.backgroundColor = [UIColor cyanColor];
        _ABFifthContentLbl.numberOfLines = 0;
        _ABFifthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_ABFifthContentLbl sizeToFit];
    }
    return _ABFifthContentLbl;
}
- (UILabel *)ABTotalScoreTitleLbl{
    if (!_ABTotalScoreTitleLbl) {
        _ABTotalScoreTitleLbl = [[UILabel alloc] init];
        [_ABTotalScoreTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _ABTotalScoreTitleLbl.textColor = [UIColor blackColor];
        _ABTotalScoreTitleLbl.backgroundColor = [UIColor cyanColor];
        _ABTotalScoreTitleLbl.numberOfLines = 0;
        _ABTotalScoreTitleLbl.text = NSLocalizedString(@"总比分", nil);
        [_ABTotalScoreTitleLbl sizeToFit];
    }
    return _ABTotalScoreTitleLbl;
}
- (UILabel *)ABTotalScoreContentLbl{
    if (!_ABTotalScoreContentLbl) {
        _ABTotalScoreContentLbl = [[UILabel alloc] init];
        [_ABTotalScoreContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _ABTotalScoreContentLbl.textColor = [UIColor blackColor];
        _ABTotalScoreContentLbl.backgroundColor = [UIColor cyanColor];
        _ABTotalScoreContentLbl.numberOfLines = 0;
        _ABTotalScoreContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_ABTotalScoreContentLbl sizeToFit];
    }
    return _ABTotalScoreContentLbl;
}
@end
