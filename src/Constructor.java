public class Constructor extends ParentConst {
    public Constructor(){
        super(123);
        System.out.println("Default Constructor");

    }
    public Constructor(int id){
        super(50.50f);
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
        Constructor c1 = new Constructor(10);
        Constructor c2 = new Constructor("Prabha",8756406213L);

    }
}
