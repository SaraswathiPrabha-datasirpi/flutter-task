public class CompanyDetails {
    //Hybrid Inheritance
    //Combination of Multilevel + Hirearichal
    public void companyName(){
        System.out.println("Company Name: AAA");
    }
    public void companyId(){
        System.out.println("Company Id: 344");
    }
}
class ClientDetails extends CompanyDetails{
    public void clientId(){
        System.out.println("Client Id: 15");
    }
    public void clientName(){
        System.out.println("Client Name: Sabana");
    }

    public static void main(String[] args) {
        ClientDetails cd = new ClientDetails();
        cd.companyId();
        cd.companyName();
        cd.clientId();
        cd.clientName();
    }
}
class StudentDetails extends ClientDetails{
    public void studentName(){
        System.out.println("Student Name: Thiru");
    }

    public static void main(String[] args) {
        StudentDetails sd = new StudentDetails();
        sd.companyId();
        sd.clientName();
        sd.clientId();
        sd.clientName();
        sd.studentName();
    }
}