public class Employee {             //Constructor overloading
    public Employee(){
        System.out.println("Default Constructor");
    }
    public Employee(int id){
        System.out.println("Parameterized Constructor");
        System.out.println("Employee id:" + id);
    }
    public Employee(String name, int age){
        System.out.println("Employee name:"+ name);
        System.out.println("Employee age:"+age);
    }

    public static void main(String[] args) {
        Employee emp = new Employee();
        Employee emp1 = new Employee(7);
        Employee emp2 = new Employee("Prabha", 22);
    }

}
