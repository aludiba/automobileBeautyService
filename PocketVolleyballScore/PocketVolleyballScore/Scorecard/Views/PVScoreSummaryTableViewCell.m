//
//  PVScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "PVScoreSummaryTableViewCell.h"
#import "PVScorecardViewModel.h"

@interface PVScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *PVFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *PVFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *PVSecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *PVSecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *PVThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *PVThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *PVFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *PVFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *PVFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *PVFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *PVTotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *PVTotalScoreContentLbl;//总比分内容
@end

@implementation PVScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVFirstTitleLbl];
        [self.contentView addSubview:self.PVFirstContentLbl];
        [self.contentView addSubview:self.PVSecondTitleLbl];
        [self.contentView addSubview:self.PVSecondContentLbl];
        [self.contentView addSubview:self.PVThirdTitleLbl];
        [self.contentView addSubview:self.PVThirdContentLbl];
        [self.contentView addSubview:self.PVFourthTitleLbl];
        [self.contentView addSubview:self.PVFourthContentLbl];
        [self.contentView addSubview:self.PVFifthTitleLbl];
        [self.contentView addSubview:self.PVFifthContentLbl];
        [self.contentView addSubview:self.PVTotalScoreTitleLbl];
        [self.contentView addSubview:self.PVTotalScoreContentLbl];
        
        [self.PVFirstTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(PVWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVFirstContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVFirstTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
           make.top.equalTo(self.contentView).offset(10);
                make.height.mas_equalTo(20);
        }];
        [self.PVSecondTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.PVFirstTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVSecondContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVSecondTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVFirstContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVThirdTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.PVSecondTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVThirdContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVThirdTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVSecondContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVFourthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.PVThirdTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVFourthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVFourthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVThirdContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVFifthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.PVFourthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVFifthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVFifthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVFourthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVTotalScoreTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.PVFifthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVWIDTH);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.PVTotalScoreContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVTotalScoreTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVFifthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setPVModel:(PVScorecardViewModel *)PVModel{
    _PVModel = PVModel;
    for (int i = 0; i < _PVModel.PVBureauPointsArray.count; i++) {
        PVBureauPointsModel *bureauPointsModel = _PVModel.PVBureauPointsArray[i];
        if (bureauPointsModel.PVIndex == 0) {
            if (bureauPointsModel.PVtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVFirstContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVIndex == 1){
            if (bureauPointsModel.PVtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVSecondContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVIndex == 2){
            if (bureauPointsModel.PVtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVThirdContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVIndex == 3){
            if (bureauPointsModel.PVtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVFourthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVIndex == 4){
            if (bureauPointsModel.PVtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVFifthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVtBureauScoreString,deadEvenString];
            }
        }
    }
    if (_PVModel.totalAcoreString.length) {
        self.PVTotalScoreContentLbl.text = _PVModel.totalAcoreString;
    }
    CGSize size = [self.PVFirstTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVFirstTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVFirstTitleLbl layoutIfNeeded];
    size = [self.PVSecondTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVSecondTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVSecondTitleLbl layoutIfNeeded];
    size = [self.PVThirdTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVThirdTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVThirdTitleLbl layoutIfNeeded];
    size = [self.PVFourthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVFourthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVFourthTitleLbl layoutIfNeeded];
    size = [self.PVFifthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVFifthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVFifthTitleLbl layoutIfNeeded];
    size = [self.PVTotalScoreTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVTotalScoreTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVTotalScoreTitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)PVFirstTitleLbl{
    if (!_PVFirstTitleLbl) {
        _PVFirstTitleLbl = [[UILabel alloc] init];
        [_PVFirstTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVFirstTitleLbl.textColor = [UIColor blackColor];
        _PVFirstTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVFirstTitleLbl.numberOfLines = 0;
        _PVFirstTitleLbl.text = NSLocalizedString(@"第一局", nil);
        [_PVFirstTitleLbl sizeToFit];
    }
    return _PVFirstTitleLbl;
}
- (UILabel *)PVFirstContentLbl{
    if (!_PVFirstContentLbl) {
        _PVFirstContentLbl = [[UILabel alloc] init];
        [_PVFirstContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVFirstContentLbl.textColor = [UIColor blackColor];
        _PVFirstContentLbl.backgroundColor = [UIColor cyanColor];
        _PVFirstContentLbl.numberOfLines = 0;
        _PVFirstContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVFirstContentLbl sizeToFit];
    }
    return _PVFirstContentLbl;
}
- (UILabel *)PVSecondTitleLbl{
    if (!_PVSecondTitleLbl) {
        _PVSecondTitleLbl = [[UILabel alloc] init];
        [_PVSecondTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVSecondTitleLbl.textColor = [UIColor blackColor];
        _PVSecondTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVSecondTitleLbl.numberOfLines = 0;
        _PVSecondTitleLbl.text = NSLocalizedString(@"第二局", nil);
        [_PVSecondTitleLbl sizeToFit];
    }
    return _PVSecondTitleLbl;
}
- (UILabel *)PVSecondContentLbl{
    if (!_PVSecondContentLbl) {
        _PVSecondContentLbl = [[UILabel alloc] init];
        [_PVSecondContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVSecondContentLbl.textColor = [UIColor blackColor];
        _PVSecondContentLbl.backgroundColor = [UIColor cyanColor];
        _PVSecondContentLbl.numberOfLines = 0;
        _PVSecondContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVSecondContentLbl sizeToFit];
    }
    return _PVSecondContentLbl;
}
- (UILabel *)PVThirdTitleLbl{
    if (!_PVThirdTitleLbl) {
        _PVThirdTitleLbl = [[UILabel alloc] init];
        [_PVThirdTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVThirdTitleLbl.textColor = [UIColor blackColor];
        _PVThirdTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVThirdTitleLbl.numberOfLines = 0;
        _PVThirdTitleLbl.text = NSLocalizedString(@"第三局", nil);
        [_PVThirdTitleLbl sizeToFit];
    }
    return _PVThirdTitleLbl;
}
- (UILabel *)PVThirdContentLbl{
    if (!_PVThirdContentLbl) {
        _PVThirdContentLbl = [[UILabel alloc] init];
        [_PVThirdContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVThirdContentLbl.textColor = [UIColor blackColor];
        _PVThirdContentLbl.backgroundColor = [UIColor cyanColor];
        _PVThirdContentLbl.numberOfLines = 0;
        _PVThirdContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVThirdContentLbl sizeToFit];
    }
    return _PVThirdContentLbl;
}
- (UILabel *)PVFourthTitleLbl{
    if (!_PVFourthTitleLbl) {
        _PVFourthTitleLbl = [[UILabel alloc] init];
        [_PVFourthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVFourthTitleLbl.textColor = [UIColor blackColor];
        _PVFourthTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVFourthTitleLbl.numberOfLines = 0;
        _PVFourthTitleLbl.text = NSLocalizedString(@"第四局", nil);
        [_PVFourthTitleLbl sizeToFit];
    }
    return _PVFourthTitleLbl;
}
- (UILabel *)PVFourthContentLbl{
    if (!_PVFourthContentLbl) {
        _PVFourthContentLbl = [[UILabel alloc] init];
        [_PVFourthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVFourthContentLbl.textColor = [UIColor blackColor];
        _PVFourthContentLbl.backgroundColor = [UIColor cyanColor];
        _PVFourthContentLbl.numberOfLines = 0;
        _PVFourthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVFourthContentLbl sizeToFit];
    }
    return _PVFourthContentLbl;
}
- (UILabel *)PVFifthTitleLbl{
    if (!_PVFifthTitleLbl) {
        _PVFifthTitleLbl = [[UILabel alloc] init];
        [_PVFifthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVFifthTitleLbl.textColor = [UIColor blackColor];
        _PVFifthTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVFifthTitleLbl.numberOfLines = 0;
        _PVFifthTitleLbl.text = NSLocalizedString(@"第五局", nil);
        [_PVFifthTitleLbl sizeToFit];
    }
    return _PVFifthTitleLbl;
}
- (UILabel *)PVFifthContentLbl{
    if (!_PVFifthContentLbl) {
        _PVFifthContentLbl = [[UILabel alloc] init];
        [_PVFifthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVFifthContentLbl.textColor = [UIColor blackColor];
        _PVFifthContentLbl.backgroundColor = [UIColor cyanColor];
        _PVFifthContentLbl.numberOfLines = 0;
        _PVFifthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVFifthContentLbl sizeToFit];
    }
    return _PVFifthContentLbl;
}
- (UILabel *)PVTotalScoreTitleLbl{
    if (!_PVTotalScoreTitleLbl) {
        _PVTotalScoreTitleLbl = [[UILabel alloc] init];
        [_PVTotalScoreTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVTotalScoreTitleLbl.textColor = [UIColor blackColor];
        _PVTotalScoreTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVTotalScoreTitleLbl.numberOfLines = 0;
        _PVTotalScoreTitleLbl.text = NSLocalizedString(@"总比分", nil);
        [_PVTotalScoreTitleLbl sizeToFit];
    }
    return _PVTotalScoreTitleLbl;
}
- (UILabel *)PVTotalScoreContentLbl{
    if (!_PVTotalScoreContentLbl) {
        _PVTotalScoreContentLbl = [[UILabel alloc] init];
        [_PVTotalScoreContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVTotalScoreContentLbl.textColor = [UIColor blackColor];
        _PVTotalScoreContentLbl.backgroundColor = [UIColor cyanColor];
        _PVTotalScoreContentLbl.numberOfLines = 0;
        _PVTotalScoreContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVTotalScoreContentLbl sizeToFit];
    }
    return _PVTotalScoreContentLbl;
}
@end
