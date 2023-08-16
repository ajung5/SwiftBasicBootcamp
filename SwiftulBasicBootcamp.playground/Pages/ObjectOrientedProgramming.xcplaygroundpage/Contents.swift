import Foundation

/*
 
 ######### ---------- OOP ---------- ##########
 // Selama aplikasi berjalan, kita "create" dan "destroy" objects
 // Create = Initialize (init) = Allocate (add to memory)
 // Destroy = Deinitialize (deinit) = Deallocate (remove from memory)
 
 ######### ---------- Automatic Reference Counting (ARC) ---------- ##########
 // a live count of the number of objects in memory
 // create 1 object, count goes up by 1
 // Destroy 1 object, count does down by 1
 
 // morre objects in memory, the slower the app performs
 // we want to keep ARC count as low as possible
 // we want to create objects, only when we need them
 // and destroy them as soon as we no longer need them
 
 // for example:
 // if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it (ie. when the user clicks a button to segue to screen 2). When we get to screen 2, we may want to deallocate screen 1.
 
 ######### ---------- Memory Types: Stack vs Heap ---------- ##########
 // there are two types of memory
 // "stack" & "heap"
 // only  objects in the Heap are counted towards ARC << ---
 
 // Objects in the "Stack"
 // Strings, Bool, Int, most basic types
 // New: Struct, Enum
 
 // Objects in the "Heap"
 // Function
 // New: Class, Actors
 
 ######### ---------- Multi-threaded environment ---------- ##########
 // iPhone is a "multi-threaded" environment
 // There are multiple "threads" on "engines" running simultaniously
 // Each threads has a Stack
 // But there is only 1 Heap for all
 
 // Therefore:
 // Stack is Faster, lower memory footprint, prefarable
 // Heap is Slowewr, higher memory footprint, risk of threrading issues
 
 ######### ---------- Value vs Reference Types ---------- ##########
 // Objects in the "Stack" are "Value" types
 // when you edit a value type, you create a copy of it with new data.
 
 // objects in the heap are Reference types.
 // when you edit a reference type, you edit the object that you are referencing. This "reference" is called "pointer". because it "points" to an obbject in the heap (in memory)
 
 ######### ---------- Class vs Struct ---------- ##########
 // Imagine a school and in the school there are classrooms.
 // within each class, there are quizzes.
 // During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and reetuurn them back to the teacher.
 
 // "school" = App
 // "classroom" = Class
 // "quiz" = struct
 
 // in this example, we have a classrooms and there are many actions that occur inside the classroom.
 / in code, we create a class and can perform actions within the class.
 
 // in this example, there are many different types of quizzes. The teacher hands out the quizzes and the student take the quizzes and return them to the teacher.
 // in code, we create many structs and pass them around out app with ease.
 
 
 ######### ---------- When we use Class & Struct ---------- ##########
 // we want to use a class for things like:
 // "Manager", "DataService", "Service", "Factory", "ViewModel"
 // Objects that we create and want to perform actions inside
 
 // we want to use a Struct for things like:
 // DataModel
 // Objects that we create and pass around our app
 
 */
