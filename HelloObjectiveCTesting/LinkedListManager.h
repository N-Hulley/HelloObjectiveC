//
//  LinkedListManager.h
//  HelloObjectiveCTesting
//
//  Created by 7077 on 18/11/19.
//  Copyright © 2019 7077. All rights reserved.
//

#ifndef LinkedListManager_h
#define LinkedListManager_h
#import "LinkedListItem.h"
@interface LinkedListManager: NSObject

@property (nonatomic, readwrite) LinkedListItem* First;
@property (nonatomic, readwrite) LinkedListItem* Last;
@property (nonatomic, readwrite) NSInteger length;

- (void)addItem:(LinkedListItem*) item;
- (void)add: (int) value;
- (int)get:(int) index;
- (id)init;
- (void)generatePattern:(int)start length: (int)count multiply: (int)multiplier;
@end


#endif /* LinkedListManager_h */
