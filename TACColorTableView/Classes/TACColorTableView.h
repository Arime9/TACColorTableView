//
//  TACColorTableView.h
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TACColorTableViewDelegate;

@interface TACColorTableView : UITableView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<TACColorTableViewDelegate> delegate_color;
@property (nonatomic, copy) NSString *selectedRoomColorId;
@property (nonatomic, copy) NSString *selectedRoomColorName;
@property (nonatomic, strong) NSArray *roomColorSelectsArray;

@end

@protocol TACColorTableViewDelegate <NSObject>

@required
- (void)setRoomColorId:(NSString *)roomColorId roomColorName:(NSString *)roomColorName;

@end
