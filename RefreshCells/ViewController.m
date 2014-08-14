//
//  ViewController.m
//  RefreshCells
//
//  Created by Vik Denic on 8/14/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "GameConsole.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property NSMutableArray *gameConsoleArray;

@end

@implementation ViewController

-(void)viewDidLoad
{
    GameConsole *xbox = [[GameConsole new] initWithInfo:[UIImage imageNamed:@"xbox" ] withName:@"Xbox" withPrice:100];
    GameConsole *n64 = [[GameConsole new] initWithInfo:[UIImage imageNamed:@"ps2" ] withName:@"PS2" withPrice:100];
    GameConsole *ps2 = [[GameConsole new] initWithInfo:[UIImage imageNamed:@"n64" ] withName:@"N64" withPrice:100];

    self.gameConsoleArray = [NSMutableArray arrayWithObjects:xbox, n64, ps2, nil];
}

@end
