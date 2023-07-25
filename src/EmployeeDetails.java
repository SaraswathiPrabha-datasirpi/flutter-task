public class EmployeeDetails {

    // static variable
    static int a = 22;
    //static method
    public static void employeeName(){
        System.out.println("Employee Name: Prabha");

    }
    public void employeeId(){
        System.out.println("Employee Id: 15");
    }

    public static void main(String[] args) {
        employeeName();
        EmployeeDetails ed = new EmployeeDetails();
        ed.employeeId();
        System.out.println("Static variable:" + a);
    }

}
