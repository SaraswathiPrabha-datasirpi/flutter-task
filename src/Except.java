import java.lang.Exception;
public class Except{
    public static void main(String[] args)  {

        System.out.println(1);
        System.out.println(2);
        System.out.println(3);
        try{
            System.out.println(4/0);
        }
        catch (StringIndexOutOfBoundsException e){
            System.out.println("String Exception.....");
        }
        catch (ArithmeticException e){
            System.out.println("Arithmetic Exception....");
        }
        catch (Exception e){
            System.out.println("Exception.....");
        }
        finally {

            System.out.println("Finally block is executed.......");
        }
        System.out.println(5);
        System.out.println(6);
        System.out.println(7);
        System.out.println(8);
    }

}
