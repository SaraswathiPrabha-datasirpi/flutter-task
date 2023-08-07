public class CollegeInformation {
    //Hirearichal Inheritance
    public void collegeName(){
        System.out.println("College Name: ABC");
    }
    public void collegeCode(){
        System.out.println("College code: 234");
    }
    public void collegeRank(){
        System.out.println("College Rank: 20");
    }
}
class Student extends CollegeInformation{
    public void studentId(){
        System.out.println("Student id: 5");
    }
    public void studentName(){
        System.out.println("Student Name: Prabha");
    }

    public static void main(String[] args) {
        Student s = new Student();
        s.collegeName();
        s.collegeCode();
        s.collegeRank();
        s.studentId();
        s.studentName();
    }

}
class Department extends CollegeInformation{
    public void deptName(){
        System.out.println("Department : CSE");
    }

    public static void main(String[] args) {
        Department d = new Department();
        d.collegeName();
        d.collegeCode();
        d.collegeRank();
        d.deptName();
    }
}
class Course extends CollegeInformation{
    public void courseName() {
        System.out.println("Course Name: ECE");
    }

    public static void main(String[] args) {
        Course c = new Course();
        c.collegeName();
        c.collegeCode();
        c.collegeRank();
        c.courseName();
    }
}