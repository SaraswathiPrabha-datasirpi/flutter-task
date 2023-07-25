public class EmployeeDetails {

    // static variable
    static int age= 22;
    //static method
    public static void employeeName(){
        System.out.println("Employee Name: Prabha");

    }
    public void employeeId(){
        System.out.println("Employee Id: 15");
        System.out.println("Employee age:" + age);
    }}

class Clients extends EmployeeDetails {     // Extending EmployeeDetails class in clients class
        public void clientName(){
            System.out.println("Client Name: Anu");
        }
        //static method
        public static void clientId(){
            System.out.println("Client Id is: 23");
            System.out.println("Client age:" + age);
        }

        public static void main(String[] args) {
            employeeName();
            Clients c = new Clients();
            c.employeeId();
            c.clientName();
            clientId();


        }

    }


