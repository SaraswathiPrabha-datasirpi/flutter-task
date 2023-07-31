public class Constructor {
    public Constructor(){
        this(5);
        System.out.println("Default Constructor");

    }
    public Constructor(int id){
        this("Prabha",9629763465L);
        System.out.println("Integer Parameterized constructor");
        System.out.println("Student id:"+ id);
        System.out.println("\n");
    }
    public Constructor(String name,long phno){
        System.out.println("String and Long parametrized constr");
        System.out.println("Student name:"+name);
        System.out.println("Student Phone_No:"+phno);
        System.out.println("\n");
    }

    public static void main(String[] args) {
        Constructor c = new Constructor();

    }
}
