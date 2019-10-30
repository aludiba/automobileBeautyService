//
//  PVScorecardTitleTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVScorecardTitleTableViewCell.h"
#import "PVScorecardViewModel.h"
@interface PVScorecardTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVtitleField;//标题
@end
@implementation PVScorecardTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVtitleField];
        
        [self.PVtitleField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(PVScorecardViewModel *)model{
    _model = model;
    self.PVtitleField.text = _model.PVnatureCompetitionString;
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.PVnatureCompetitionString = textField.text;
    self.type = 0;
    if(self.PVScorecardTitleEditB) {
        self.PVScorecardTitleEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.PVnatureCompetitionString = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.PVnatureCompetitionString = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.model.PVnatureCompetitionString = textField.text;
    self.type = 1;
    if(self.PVScorecardTitleEditB) {
        self.PVScorecardTitleEditB(self);
    }
}
#pragma mark - 属性懒加载
- (UITextField *)PVtitleField{
    if (!_PVtitleField) {
        _PVtitleField = [[UITextField alloc] init];
        _PVtitleField.delegate = self;
        _PVtitleField.backgroundColor = [UIColor cyanColor];
        _PVtitleField.textColor = [UIColor blackColor];
        _PVtitleField.textAlignment = NSTextAlignmentCenter;
        _PVtitleField.font = [UIFont systemFontOfSize:25];
    }
    return _PVtitleField;
}
@end
