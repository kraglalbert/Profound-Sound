//
//  PPAAcousticRIs.m
//  Personal Project App
//
//  Created by Albert Kragl on 2013-11-08.
//  Copyright (c) 2013 Albert Kragl. All rights reserved.
//

#import "PPAAcousticRIs.h"

@interface PPAAcousticRIs ()

@end

@implementation PPAAcousticRIs

- (NSString *)dataFilePath
{
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"choices.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath: path])
    {
        NSString *bundle = [[NSBundle mainBundle] pathForResource:@"choices" ofType:@"plist"];
        
        [fileManager copyItemAtPath:bundle toPath:path error:&error];
    }
    ////NSBundle *bundle = [NSBundle mainBundle];
    ////NSString *plistPath = [bundle pathForResource:@"choices" ofType:@"plist"];
    return path;
    //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //NSString *documentDirectory = [paths objectAtIndex:0];
    //return [documentDirectory stringByAppendingPathComponent:@"choices.plist"];
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.plistIndex = 4;
    
    self.listData = @[@"USB Guitar Rec. Interface (RI)",
                      @"USB Mic RI (XLR)",
                      @"USB Mic RI (XLR + Phantom)",
                      @"USB Gtr./Mic RI (XLR)",
                      @"USB Gtr./Mic RI (XLR + Phantom)",
                      @"Firewire Guitar RI",
                      @"Firewire Mic RI (XLR)",
                      @"Firewire Mic RI (XLR + Phantom)",
                      @"Firewire Gtr./Mic RI (XLR)",
                      @"Firewire Gtr./Mic RI (XLR + Phantom)"];
    
    NSString *path = [self dataFilePath];
    self.filePath = path;
    if ([[NSFileManager defaultManager] fileExistsAtPath:self.filePath]) {
        NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:self.filePath];
        //NSLog([NSNumber numberWithInteger:[array count]]);
        //NSLog([x stringValue]);
        self.plistArray = array;
    }
    self.selectedEffectsUnit = [[self.plistArray objectAtIndex:self.plistIndex] integerValue];
    
    [self.tableView registerClass: [UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)applicationWillResignActive:(NSNotification *)notification
{
    NSString *filepath = [self dataFilePath];
    //NSArray *array = [self.selectedEffectsUnit valueForKey:@"text"];
    //[array writeToFile:filepath atomically:YES];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
 //Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
// Return the number of rows in the section.
    return [self.listData count];
    
    NSLog(@"%d", [self.listData count]);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    
    cell.textLabel.text = [self.listData objectAtIndex:[indexPath row]];
    cell.textLabel.font = [UIFont systemFontOfSize:17];
    
    if (self.selectedEffectsUnit == indexPath.row) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.row != self.selectedEffectsUnit) {
        if (self.selectedEffectsUnit != NSNotFound) {
            NSIndexPath *oldIndexPath = [NSIndexPath indexPathForRow:self.selectedEffectsUnit
                                                           inSection:0];
            UITableViewCell *oldCell = [tableView cellForRowAtIndexPath:oldIndexPath];
            oldCell.accessoryType = UITableViewCellAccessoryNone;
        }
        //NSLog([[NSNumber numberWithUnsignedInt:[self.plistArray count]) stringValue]);
        //NSLog([[NSNumber numberWithUnsignedInt:self.plistIndex] stringValue]);
        //NSLog(self.filePath);
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        self.selectedEffectsUnit = [indexPath row];
        [self.plistArray replaceObjectAtIndex:self.plistIndex withObject:[[NSNumber numberWithInteger:[indexPath row]] stringValue]];
        //NSLog([[self.plistArray objectAtIndex:9] stringValue]);
    }
    else {
        self.selectedEffectsUnit = NSNotFound;
        cell.accessoryType = UITableViewCellAccessoryNone;
        [self.plistArray replaceObjectAtIndex:self.plistIndex withObject:[[NSNumber numberWithInteger:-1] stringValue]];
    }
    [self.plistArray writeToFile:self.filePath atomically:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
