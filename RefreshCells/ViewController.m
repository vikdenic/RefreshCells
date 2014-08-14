//
//  ViewController.m
//  RefreshCells
//
//  Created by Vik Denic on 8/14/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "GameConsole.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property NSMutableArray *gameConsoleArray;

@end

@implementation ViewController

-(void)viewDidLoad
{
    self.myTableView.delegate = self;

    GameConsole *xbox = [[GameConsole new] initWithInfo:[UIImage imageNamed:@"xbox" ] withName:@"Xbox" withYear:2001];
    GameConsole *n64 = [[GameConsole new] initWithInfo:[UIImage imageNamed:@"ps2" ] withName:@"PS2" withYear:1996];
    GameConsole *ps2 = [[GameConsole new] initWithInfo:[UIImage imageNamed:@"n64" ] withName:@"N64" withYear:2000];

    self.gameConsoleArray = [NSMutableArray arrayWithObjects:xbox, n64, ps2, nil];
}

#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.gameConsoleArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    customCell.nameLabel.text = [[self.gameConsoleArray objectAtIndex:indexPath.row] name];

    int tempYear = [[self.gameConsoleArray objectAtIndex:indexPath.row] yearOfRelease];
    customCell.yearLabel.text = [NSString stringWithFormat:@"%d", tempYear ];

    customCell.customImageView.image = [[self.gameConsoleArray objectAtIndex:indexPath.row] image];

    return customCell;
}

@end
