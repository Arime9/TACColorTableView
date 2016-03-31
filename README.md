# TACColorTableView
![Screen Shot](https://github.com/Tea-and-Coffee/TACColorTableView/wiki/images/ScreenShot_iPhone5s_iOS9.2_01.png)

# Installation
Add the following files to your project.

* TACColorTableView/Classes

# Usage
    - (void)viewDidLoad {
    [super viewDidLoad];
    
    // colors
    self.colors = [NSMutableArray array];
    for (int i = 0; i < 11; i++) {
        TACColorData *data = [TACColorData dataWithColor:[UIColor colorWithRed:1.000 green:0.700 blue:0.100*i alpha:1.000] colorIndex:i];
        [self.colors addObject:data];
    }
    
    // selectedData
    self.selectedData = self.colors[1];
    
    // tableView
    [self.tableView registerClass:[TACMetaColorTableViewCell class] forCellReuseIdentifier:[TACMetaColorTableViewCell reuseIdentifier]];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor colorWithRed:0.894 green:1.000 blue:0.840 alpha:1.000];
    self.tableView.rowHeight = [TACMetaColorTableViewCell frame].size.height;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    }

    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 1;
    }
    
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return 1;
    }

    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        TACMetaColorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[TACMetaColorTableViewCell reuseIdentifier] forIndexPath:indexPath];
        cell.colorTableView.colorTableViewDelegate = self;
        cell.colorTableView.colors = self.colors;
        cell.colorTableView.selectedData = self.selectedData;
        [cell.colorTableView reloadData];
    
        self.colorTableView = cell.colorTableView;
    
        return cell;
    }

    #pragma mark <TACColorTableViewDelegate>
    - (void)colorTableView:(TACColorTableView *)colorTableView selectedData:(TACColorData *)selectedData {
        self.selectedData = selectedData;
    }

# License
TACTableViewMenuController is released under the MIT license. See LICENSE for details.