public abstract class Facebook {
    public void emailId(){
        System.out.println("Email id : prabha@gmail.com");
    }
    public abstract void password();

}
class Login extends Facebook{
    @Override
    public void password() {
        System.out.println("Password: 12345");
    }
    public void loginBtn(){
        System.out.println("Click the Login Button");
    }

    public static void main(String[] args) {
        Login l = new Login();
        l.emailId();
        l.password();
        l.loginBtn();
    }
}
