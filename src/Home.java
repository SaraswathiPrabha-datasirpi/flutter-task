public class Home {
    //Method overriding
    public void paint(){
        System.out.println("Paint Color: Green");
    }
    public void door(){
        System.out.println("Door type: Wood");
    }
}
class NewHome extends Home{
    @Override
    public void paint() {
        System.out.println("Paint Color: Pink");
    }

    @Override
    public void door() {
        System.out.println("Door type: Steel");
    }

    public static void main(String[] args) {
        NewHome n = new NewHome();
        n.paint();
        n.door();
    }
}
