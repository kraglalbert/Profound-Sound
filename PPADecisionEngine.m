//
//  PPADecisionEngine.m
//  Personal Project App
//
//  Created by Albert Kragl on 2/9/2014.
//  Copyright (c) 2014 Albert Kragl. All rights reserved.
//

#import "PPADecisionEngine.h"

@interface PPADecisionEngine ()

@end

@implementation PPADecisionEngine

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)getSolutions {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *plistLocation = [documentsDirectory stringByAppendingPathComponent:@"choices.plist"];
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plist = [bundle pathForResource:@"choices" ofType:@"plist"];
    NSArray *plistData = [NSArray arrayWithContentsOfFile:plistLocation];
    
    NSMutableArray *setOfSolutions = [[NSMutableArray alloc]initWithObjects:@"-1", @"-1", @"-1", nil];
    
    //NSLog([plistData objectAtIndex:0]);
    if ([[plistData objectAtIndex:0] isEqualToString:@"0"]) { // set of solutions for acoustic guitar
        NSLog(@"Zero");
    
    // OPTION 5: Mac, N/A, Recording Software for Mac, Any Guitar Recording Interface (+ Pickup)
    
       if (([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"4"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"5"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"8"] &&
            [[plistData objectAtIndex:12] isEqualToString:@"0"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"9"] &&
            [[plistData objectAtIndex:12] isEqualToString:@"0"]))
    
       {
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"5"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                    [setOfSolutions replaceObjectAtIndex:1 withObject:@"5"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                    [setOfSolutions replaceObjectAtIndex:2 withObject:@"5"];
           }
           
       }
    
    // OPTION 6: PC, N/A, Recording Software for PC, Any Recording Interface (+ Pickup)
    
       if (([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"4"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"5"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"8"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"9"] &&
           [[plistData objectAtIndex:12] isEqualToString:@"0"]))
    
       {
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"6"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"6"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"6"];
           }

       }
    
    // OPTION 7: Mac, XLR Dynamic Mic, Recording Software for Mac, RI + XLR
    
       if (([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"1"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"2"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"3"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"4"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"6"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"7"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"8"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"9"]))
    
       {
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"7"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"7"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"7"];
           }

       }
    
    // OPTION 8: Mac, XLR Condenser Mic, Recording Software for Mac, RI + Phantom
    
       if (([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"2"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"4"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"7"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"9"]))
    
       {
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"8"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"8"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"8"];
           }

       }
    
    // OPTION 9: PC, XLR Dynamic Mic, Recording Software for PC, RI + XLR
    
       if (([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"1"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"2"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"3"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"4"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"6"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"7"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"8"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"2"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"9"]))
    
       {
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"9"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"9"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"9"];
           }

       }
    
    // OPTION 10: PC, XLR Condenser Mic, Recording Software for PC, RI + Phantom
    
       if (([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"2"])
        
           ||
        
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:4] isEqualToString:@"4"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"7"])
           
           ||
           
           ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"3"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:4] isEqualToString:@"9"]))
    
       {
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"10"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"10"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"10"];
           }

       }
        
        // OPTION 1: Mac, USB Dynamic Mic, Recording Software for Mac, Any Recording Interface or N/A
        
        if  ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:2] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:3] isEqualToString:@"0"])
            
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"1"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"1"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"1"];
            }

        }
        
        // OPTION 2: Mac, USB Condenser Mic, Recording Software for Mac, Any Recording Iterface or N/A
        
        if ([[plistData objectAtIndex:1] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"0"])
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"2"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"2"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"2"];
            }

        }
        
        // OPTION 3: PC, USB Dynamic Mic, Recording Software for PC, Any Recording Interface or N/A
        
        if ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"])
            
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"3"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"3"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"3"];
            }

        }
        
        // OPTION 4: PC, USB Condenser Mic, Recording Software for PC, Any Recording Interface or N/A
        
        if ([[plistData objectAtIndex:1] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:2] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:3] isEqualToString:@"1"])
            
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"4"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"4"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"4"];
            }

        }
        
    }
    
    else if ([[plistData objectAtIndex:0] isEqualToString:@"1"]) { // set of solutions for electric guitar
        NSLog(@"One");
    
    // THIS IS FOR THE ELECTRIC LIST
    
    // OPTION 19: Mac, RS for Mac, Guitar-Only and Combo RIs
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"3"])
        
           ||
           
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"4"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"5"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"8"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"9"]))
    
       {
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"19"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"19"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"19"];
           }
        
       }
    
    // OPTION 20: PC, RS for PC, Guitar-Only and Combo RIs
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"3"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"4"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"5"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"8"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"9"]))
       
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"20"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"20"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"20"];
           }
        
       }
    
    // OPTION 21: Mac, RS for Mac, Guitar-Only and Combo RIs, Pedal
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
           
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
           
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"5"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"8"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"]))
    
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"21"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"21"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"21"];
           }
        
       }
    
    // OPTION 22: PC, RS for PC, Guitar-Only and Combo RIs, Pedal
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"5"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"8"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"]))
    
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"22"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"22"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"22"];
           }
        
       }
    
    // OPTION 23: Mac, RS for Mac, Effects Unit w/ USB or Firewire Connection
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
           
           ||
           
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:9] isEqualToString:@"1"]))
    
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"23"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"23"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"23"];
           }
        
       }
    
    // OPTION 24: Mac, RS for Mac, Effects Unit w/ Thunderbolt
    
       if ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"2"])
    
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"24"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"24"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"24"];
           }
        
       }
    
    // OPTION 25: PC, RS for PC, Effects Unit w/ USB or Firewire Connection
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
           
           ||
           
          ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"1"]))
    
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"25"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"25"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"25"];
           }
        
       }
    
    // OPTION 26: Mac, RS for Mac, Guitar-Only and Combo RIs, Effects Unit w/ Guitar Jack Only
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"5"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"8"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"]))
    
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"26"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"26"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"26"];
           }
        
       }
    
    // OPTION 27: PC, RS for PC, Guitar-Only and Combo RIs, Effects Unit w/ Guitar Jack Only
    
       if (([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
           
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"3"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"5"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"8"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"])
        
           ||
        
           ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
           [[plistData objectAtIndex:9] isEqualToString:@"0"]))
    
       {
           
           if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:0 withObject:@"27"];
           }
           else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:1 withObject:@"27"];
           }
           else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
               [setOfSolutions replaceObjectAtIndex:2 withObject:@"27"];
           }
        
       }
    
        
        /*
    // OPTION 28: Mac, RS for Mac, Anything, Anything, Anything, Amp, Pedal
    
       if ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
           ![[plistData objectAtIndex:7] isEqualToString:@"-1"] &&
           ![[plistData objectAtIndex:8] isEqualToString:@"-1"] &&
           ![[plistData objectAtIndex:9] isEqualToString:@"-1"] &&
           [[plistData objectAtIndex:10] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
    
       {
           [setOfSolutions replaceObjectAtIndex:0 withObject:@"19"];
           [setOfSolutions replaceObjectAtIndex:1 withObject:@"-1"];
           [setOfSolutions replaceObjectAtIndex:2 withObject:@"-1"];
        
       }
    
    // OPTION 29: PC, RS for PC, Anything, Anything, Anything, Amp, Pedal
    
       if ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
           [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
           ![[plistData objectAtIndex:7] isEqualToString:@"-1"] &&
           ![[plistData objectAtIndex:8] isEqualToString:@"-1"] &&
           ![[plistData objectAtIndex:9] isEqualToString:@"-1"] &&
           [[plistData objectAtIndex:10] isEqualToString:@"0"] &&
           [[plistData objectAtIndex:11] isEqualToString:@"0"])
    
       {
           [setOfSolutions replaceObjectAtIndex:0 withObject:@"20"];
           [setOfSolutions replaceObjectAtIndex:1 withObject:@"-1"];
           [setOfSolutions replaceObjectAtIndex:2 withObject:@"-1"];
        
       }
         */
        
        // OPTION 11: Mac, RS For Mac, USB Dynamic Mic, Amp
        
        if ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:8] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:10] isEqualToString:@"0"]) {
            
            
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"11"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"11"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"11"];
            }
        }
        
        // OPTION 12: Mac, RS For Mac, USB Condenser Mic, Amp
        
        if ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:8] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:10] isEqualToString:@"0"]) {
            
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"12"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"12"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"12"];
            }

        }
        
        // OPTION 13: PC, RS For PC, USB Dynamic Mic, Amp
        
        if ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:8] isEqualToString:@"0"] &&
            [[plistData objectAtIndex:10] isEqualToString:@"0"]) {
            
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"13"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"13"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"13"];
            }

        }
        
        // OPTION 14: PC, RS For PC, USB Condenser Mic, Amp
        
        if ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:8] isEqualToString:@"1"] &&
            [[plistData objectAtIndex:10] isEqualToString:@"0"]) {
            
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"14"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"14"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"14"];
            }

        }
        
        // OPTION 15: Mac, RS For Mac, RI + XLR, XLR Dynamic Mic, Amp
        
        if (([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"6"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"7"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"8"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"]))
            
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"15"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"15"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"15"];
            }

        }
        
        // OPTION 16: Mac, RS for Mac, RI + Phantom, XLR Condenser Mic, Amp
        
        if (([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"7"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"0"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"]))
            
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"16"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"16"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"16"];
            }

        }
        
        // OPTION 17: PC, RS for PC, RI + XLR, XLR Dynamic Mic, Amp
        
        if (([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"6"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"7"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"8"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"]))
            
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"17"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"17"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"17"];
            }

        }
        
        // OPTION 18: PC, RS for PC, RI + Phantom, XLR Condenser Mic, Amp
        
        if (([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"2"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"4"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"7"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"])
            
            ||
            
            ([[plistData objectAtIndex:5] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:6] isEqualToString:@"1"] &&
             [[plistData objectAtIndex:7] isEqualToString:@"9"] &&
             [[plistData objectAtIndex:8] isEqualToString:@"3"] &&
             [[plistData objectAtIndex:10] isEqualToString:@"0"]))
            
        {
            if ([[setOfSolutions objectAtIndex:0] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:0 withObject:@"18"];
            }
            else if ([[setOfSolutions objectAtIndex:1] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:1 withObject:@"18"];
            }
            else if ([[setOfSolutions objectAtIndex:2] isEqualToString:@"-1"]) {
                [setOfSolutions replaceObjectAtIndex:2 withObject:@"18"];
            }

        }

    }
    
    NSLog(@"%@ %@ %@ %@ %@ %@ %@",[plistData objectAtIndex:5],[plistData objectAtIndex:6], [plistData objectAtIndex:7], [plistData objectAtIndex:8], [plistData objectAtIndex:9], [plistData objectAtIndex:10], [plistData objectAtIndex:11]);
    return setOfSolutions;
    
}

@end
