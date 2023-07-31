public class ParentConst {
    public ParentConst(){
        System.out.println("Parent Default Constructor");

    }
    public ParentConst(int prodId){
        System.out.println("Parent Integer Parameterized Constructor");
        System.out.println("Product id:" + prodId);
        System.out.println("\n");
    }
    public ParentConst(float price){
        System.out.println("Parent Float Parameterized Constructor");
        System.out.println("Price:" + price);
        System.out.println("\n");
    }
}
