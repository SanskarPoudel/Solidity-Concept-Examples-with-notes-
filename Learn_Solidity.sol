
pragma solidity 0.8.7;

contract Identity
{
    string name="Ravi";
    uint age=123;
   //int 8 to 256
   //uint 8 to 256
   //int is alias to int256 uint is alias to uint256 

    function getName() view public returns(string memory){
        return name;
    }
    function getAge() view public returns(uint)
    {
        return age;
    }

    //State variable: Declared in contracts, not in function and gets deployed in blockchain and require gas
    //State variable: cannot change default value like (uint var; and var = 10) after initialization . Require constructor if you want to add value separately
    //State variable: kept on storage
    //age above mentioned is state variable

    //local variable: Declared inside function and cannot get accessed by outside and doesn't require gas
    //local variable: kept on stack
    //string gets by default stored in storage so we need to put memory in order to store it on stack
    //age1, name below are the local variables

    function store() pure public returns(uint){ //pure function means it doesn't access and change state variables
        string memory name = "sanskar" ;//we need to write memory to specify that it is local variable and not stored in storage like state variable
        uint age1 = 10;
        return age1;
    }


    //Functions
     
     uint age2 =21;

     //Function 1
     function getter() public view returns(uint){ //used view beacuse we are only reading and printing the age2 variable not modifying it
         return age2 ;
     } 

     //Function 2
     function setter() public { //cannot use pure and view because we are modifying the variable 
         age2=age2+1;
     }

     //Function 2 second version
     function setter2(uint newage) public{ //we can pass the variable like newage as argument and when we enter the age in newage, then it will get assigned to the age2
         
         age2=newage;
     }

     // POINT: We don't need getter function like "Function 1" to show variable, we can directly make variable public and it will show us button through which we can see/get the value inside it
     //Setter function need gas as we are modifying the variables but Getter function don't need gas as we are just showing already declared variable.
     
     //Pure vs View : use while not modifying any variables
     //We use pure while we are not reading  the state variable : can use in the function with local variable only
     //We use view  when we have to only read the state variable/local variable : view can be used to read both state and local variable
    
    //Constructor : special function which is executed once and basically used to initialize the value to state variable
    //Constructor gets executed only once at the time of deploying contract. 
    // uint public count;
    // constructor() {
    //     count = 0;
    // }

    //Constructor with argument
    //We need to pass the parameter at the deploy time if we make constructor with argument : Otherwise our contract won't be deployed
    uint public count2;
    constructor(uint newCount){
        count2=newCount;
    }



}
