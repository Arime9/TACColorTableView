//
//  ViewController.m
//  TACColorTableViewExample
//
//  Created by masato_arai on 2015/03/20.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "ViewController.h"
#import "TACColorData.h"
#import "TACMetaColorTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // colors
    self.colors = [NSMutableArray array];
    for (int i = 0; i < 11; i++) {
        TACColorData *data = [TACColorData dataWithColor:[UIColor colorWithRed:1.000 green:0.700 blue:0.100*i alpha:1.000] colorIndex:i];
        [self.colors addObject:data];
    }
    
    // selectedData
    self.selectedData = self.colors[0];
    
    // tableView
    [self.tableView registerClass:[TACMetaColorTableViewCell class] forCellReuseIdentifier:[TACMetaColorTableViewCell reuseIdentifier]];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor colorWithRed:0.894 green:1.000 blue:0.840 alpha:1.000];
    self.tableView.rowHeight = [TACMetaColorTableViewCell frame].size.height;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark <UITableViewDataSource>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TACMetaColorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[TACMetaColorTableViewCell reuseIdentifier] forIndexPath:indexPath];
    cell.colorTableView.delegate_colorTableView = self;
    cell.colorTableView.colors = _colors;
    cell.colorTableView.selectedData = _selectedData;
    [cell.colorTableView reloadData];
    
    return cell;
}

#pragma mark <TACColorTableViewDelegate>
- (void)colorTableView:(TACColorTableView *)colorTableView selectedData:(TACColorData *)selectedData {
    _selectedData = selectedData;
}

@end
