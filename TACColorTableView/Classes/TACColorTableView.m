//
//  TACColorTableView.m
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACColorTableView.h"
#import "TACColorTableViewCell.h"

@implementation TACColorTableView

static NSString * const reuseIdentifier = @"ColorCell";

- (void)initializator {
    // Initialization code
    
    CGRect selfFrame = self.frame;
    self.transform = CGAffineTransformMakeRotation(-M_PI / 2);
    self.frame = selfFrame;
    
    UIEdgeInsets scrollIndicatorInsets = self.scrollIndicatorInsets;
    scrollIndicatorInsets.right = self.frame.size.height - (3.0 * 2 + 2.5);
    self.scrollIndicatorInsets = scrollIndicatorInsets;
    
    [self registerNib:[UINib nibWithNibName:@"TACColorTableViewCell" bundle:nil] forCellReuseIdentifier:reuseIdentifier];
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.rowHeight = self.frame.size.height;
    self.dataSource = self;
    self.delegate = self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) [self initializator];
    return self;
}

#pragma mark <UITableViewDataSource>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_roomColorSelectsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    TACColorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // indexPath
    cell.indexPath = indexPath;
    // roomColorId, roomColorName
    NSDictionary *roomColor = _roomColorSelectsArray[row];
    [cell setRoomColor:roomColor];
    
    if ([cell.roomColorId compare:_selectedRoomColorId] == NSOrderedSame) {
        [self selectRowAtIndexPath:indexPath animated:NO scrollPosition:UITableViewScrollPositionNone];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // NSInteger section = [indexPath section];
    NSInteger row = [indexPath row];
    // TACColorTableViewCell *cell = (TACColorTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    
    _selectedRoomColorId = _roomColorSelectsArray[row][@"roomColorId"];
    _selectedRoomColorName = _roomColorSelectsArray[row][@"roomColorName"];
    
    if ([self.delegate_color respondsToSelector:@selector(setRoomColorId:roomColorName:)]) {
        [self.delegate_color setRoomColorId:_selectedRoomColorId roomColorName:_selectedRoomColorName];
    }
}



@end
