component { 
    /** 
    * splits a full name in half 
    */ 
    public static function splitFullName(required string fullName) { 
        var arr=listToArray(fullName,"  "); 
        return {'lastname':arr[1],'firstname':arr[2]}; 
    } 
    // final method and cannot be overridden
    public final void function display(){
    writeOutput("From super class, final display() method");
    }
    
} 
