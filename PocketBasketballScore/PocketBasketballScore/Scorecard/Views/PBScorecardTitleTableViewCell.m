//
//  PBScorecardTitleTableViewCell.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBScorecardTitleTableViewCell.h"
#import "PBScorecardViewModel.h"
@interface PBScorecardTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *titleField;//标题
@end
@implementation PBScorecardTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemOrangeColor];
        [self.contentView addSubview:self.titleField];
        
        [self.titleField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(PBScorecardViewModel *)model{
    _model = model;
    self.titleField.text = _model.natureCompetitionString;
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.natureCompetitionString = textField.text;
    self.type = 0;
    if(self.PBScorecardTitleEditB) {
        self.PBScorecardTitleEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.natureCompetitionString = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.natureCompetitionString = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.model.natureCompetitionString = textField.text;
    self.type = 1;
    if(self.PBScorecardTitleEditB) {
        self.PBScorecardTitleEditB(self);
    }
}
#pragma mark - 属性懒加载
- (UITextField *)titleField{
    if (!_titleField) {
        _titleField = [[UITextField alloc] init];
        _titleField.delegate = self;
        _titleField.backgroundColor = [UIColor systemOrangeColor];
        _titleField.textColor = [UIColor blackColor];
        _titleField.textAlignment = NSTextAlignmentCenter;
        _titleField.font = [UIFont systemFontOfSize:25];
    }
    return _titleField;
}
@end
