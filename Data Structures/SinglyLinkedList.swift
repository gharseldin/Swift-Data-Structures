//
//  SinglyLinkedList.swift
//  Data Structures
//
//  Created by Amr Gharseldin on 7/20/18.
//  Copyright © 2018 Amr Gharseldin. All rights reserved.
//

import Foundation

class SinglyLinkedList<E> : CustomStringConvertible{
    
    class Node<E> {
        var element: E
        var next : Node<E>?
        
        init(element: E, node: Node<E>?){
            self.element = element
            self.next = node
        }
    }
    
    var head: Node<E>? = nil
    var tail: Node<E>? = nil
    var size: Int = 0
    
    func isEmpty() -> Bool {
        return size == 0
    }
    
    func first() -> Node<E>? {
        return head
    }
    
    func last() -> Node<E>? {
        return tail
    }
    
    func addFirst(e: E) {
        let newest = Node<E>(element: e, node: head)
        head = newest
        if isEmpty(){
            tail = head
        }
        size = size + 1
    }
    
    func addLast(e: E){
        let newest = Node<E>(element: e, node: nil)
        tail!.next = newest
        tail = newest
        if(isEmpty()){
            head = tail
        }
        size = size + 1
    }
    
    func removeFirst() -> E?{
        var answer: E
        if isEmpty(){
            return nil
        }
        
        size = size-1
        if(isEmpty()){
            tail = nil
        }
        
        if let h = head{
            answer = h.element
            head = h.next
            return answer
        }
        return nil
    }
    
    
    // Implement the toString protocal to test and print
    public var description: String {
        var des = ""
        var iterator: Node<E>?
        iterator = head
        while let i = iterator {    //optional unwrapping
            des +=  "\(i.element) -> "
            iterator = iterator?.next
        }
        return des
    }
}
