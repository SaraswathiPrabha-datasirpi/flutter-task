public class New {
    private int empId;
    private String empName;
    private long phNo;

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public long getPhNo() {
        return phNo;
    }

    public void setPhNo(long phNo) {
        this.phNo = phNo;
    }
}
class Sample{
    public static void main(String[] args) {
        New nw = new New();
        nw.setEmpId(123);
        nw.setEmpName("Prabha");
        nw.setPhNo(9876541246L);
        System.out.println("Employee Id: "+ nw.getEmpId());
        System.out.println("Employee Name: "+nw.getEmpName());
        System.out.println("Employee Phone No: "+nw.getPhNo());
    }
}
