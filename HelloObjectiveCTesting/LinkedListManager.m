//
//  LinkedListManager.m
//  HelloObjectiveCTesting
//
//  Created by 7077 on 18/11/19.
//  Copyright © 2019 7077. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListManager.h"

void addItem(LinkedListItem* item, LinkedListManager* manager ){
    if (manager.length <= 0) {
        manager.First = item;
        manager.Last = item;
    } else {
        manager.Last.next = item;
        manager.Last = item;
    }
    manager.length++;
}

@implementation LinkedListManager 

- (void) add:(int)value {
    LinkedListItem* linkedListItem = [[LinkedListItem alloc] init];
    [linkedListItem setValue:value];
    linkedListItem.next = NULL;
    addItem(linkedListItem, self);
}

- (int) get:(int) index {
    
    NSException *e = [NSException
                      exceptionWithName:@"OutOfRangeException"
                      reason:@"There is no element in the array with this index"
                      userInfo:nil];
    
    if (index > [self length]) @throw e;
    LinkedListItem* current = [self First];
    for (int i = 0; i < index; i++) {
        current = current.next;
    }
    return current.value;
    
}
- (id) init{
    self = [super init];
    self.First = NULL;
    self.Last = NULL;
    self.length = 0;
    
    return self;
}
- (void)generatePattern:(int)start length: (int)count multiply: (int)multiplier {
    int m = multiplier;
    for (int i = 0; i < count; i++) {
        [self add: m * i + start];
    }
}
@end
