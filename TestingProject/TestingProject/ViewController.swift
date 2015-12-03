//
//  ViewController.swift
//  TestingProject
//
//  Created by QSS Macbook Air on 11/23/15.
//  Copyright © 2015 QSS Macbook Air. All rights reserved.
//

import UIKit

/*
What you are seeing here is called a type inference. Type inference means that swift figures out what data type a variable or constant should be based on what you put into it. This means 

a) you need to put the right thing into your variables otherwise thay will have a different type from what you expect.
b) you can't change your mind later and try to put an integer into any array. 
c) you only have to give soemthing an explicit type if swift inference is wrong.


Structs: Struct are just one of the named types available to you in swift, and now that you understand struct basics you are ready to learn about their reference type counterparts: classes!

Introducting Structures:



Access Control:

To restrict access to code blocks, modules and abstraction is done through access control, Classes, Structures and enumerations. Can be accessed according to their properties, methods, initializers and subscripts by access control mechanisms. Constants, variables and fuctions in a protocol are restricted and allowed access as global and local through access control. 

Access control model is based on modules and source files. Modules is defined as a single unit of code distribution and can be improted using the keyword 'import'. A source file is defined as a single source code file with in a module to access multiple types and functions.


Three different access levels are provided by swift language. They are public, Internal, Private access.

Access  Definition
Public Enales entities to be processed with in any source file from their defining, a source file from another module that imports the defining module.

Internal : Enables entities to be used within any source file from their defining module, but not in any source file outside of that moudle.

Private: Restricts the use of any entity to its own defining source file. Private access plays role to hide the implementation details of a specific code functionality.

*/


public class SomePublicClass{}
internal class SomeInternalClass{}
private class SomePrivateClass{}

public var somePublicVariable=0
internal let someInternalConstant=0
private func somePrivateFunction(){}


/*
Access Control for function types: Some functions may have arguments declared inside the function without any return values.

*/

class ViewController: UIViewController
{
 
    
    
//Access control for enumeration types:
    public enum Student {
        
        case Name(String)
        case Mark(Int,Int,Int)
        
    }
    
    var studDetails = Student.Name("Swift")
    var studMarks = Student.Mark(98, 97, 95)
    
    
    
    
    
    /*
    switch studMarks {
    case .Name(let studName):
        print("Student name is :\(studName)")
    case .Mark(let Mark1, let Mark2, let Mark3):
        print("Student Mark are: \(Mark1),\(Mark2),\(Mark3)");
    defalut:
        print("Nothing");
    }
    */

    /*
    Access control for constants, variable, properties and subscripts. 
    Swift constant, variable or property cannot be defined as public then its type. It is not valid to write a public property with a private type. Similarly, a subscript cannot be more public than its index or return type.
    
    

    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    class samplepm {
        private var counter: Int = 0 {
            willSet(newTotal){
                print("Total counter is ")
            }
        }
    }

}