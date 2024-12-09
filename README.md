# Objective-C ARC Retain Cycle Bug

This repository demonstrates a subtle memory leak in Objective-C caused by an Automatic Reference Counting (ARC) retain cycle. The bug is difficult to detect without proper memory profiling tools. The solution shows how to break the retain cycle using weak references or other memory management techniques.

## Bug Description

A retain cycle occurs when two or more objects hold strong references to each other, preventing them from being deallocated even when they are no longer needed. This leads to memory leaks that can degrade application performance and stability.

## Solution

The solution involves using `weak` properties to break the retain cycle.  This ensures that one of the objects doesn't hold a strong reference, allowing the memory management system to deallocate the objects when appropriate.