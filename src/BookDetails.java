public class BookDetails {           //Classes,objects and default, parametrized constructor
    int id = 5 ;
    String name = "The Literature";
    BookDetails(){
         System.out.println("Default Constructor");
     }
     BookDetails(int id, String name){
         System.out.println("Parametrized Constructor");
         this.id = id;
         this.name = name;
     }
    public void bookId(){
        System.out.println("Book Id :"+id);
    }
    public void bookName(){
        System.out.println("Book Name :"+name);
    }
    public static void main(String[] args) {

        BookDetails b = new BookDetails();
        BookDetails b1 = new BookDetails(10,"The Secret");
        b1.bookId();
        b1.bookName();

    }
}
