public class Data {
    //Method Overloading
    private void student(){
        System.out.println("Student Details");
        System.out.println("======================");
    }
    private void student(String name){
        System.out.println("Student name: "+ name);
    }

    private void student(int age, char gender, String address){
        System.out.println("Student age: "+ age);
        System.out.println("Student gender: "+ gender);
        System.out.println("Student address: "+ address);
    }
    private void student(float weight, long phno){
        System.out.println("Student weight: "+ weight);
        System.out.println("Student phno: "+ phno);
    }

    private void student(long aadharNo, float percentage){
        System.out.println("Student aadhar No: "+ aadharNo);
        System.out.println("Student percentage: "+ percentage);
    }

    public static void main(String[] args) {
        Data d = new Data();
        d.student();
        d.student("Sabana");
        d.student(22,'F',"Tirunelveli");
        d.student(50.55f,9872651908L);
        d.student(45680764318987L,86.90f);
    }
}
