import java.util.*;

public class CollectionSet {
    public static void main(String[] args) {
        //LinkedHashSet
        Set<Integer> s = new LinkedHashSet<>();//prints Insertion order
        s.add(70);
        s.add(90);
        s.add(20);
        s.add(10);
        s.add(20);
        s.add(50);
        s.add(80);
        s.add(40);
        s.add(30);
        s.add(80);
        System.out.println("Elements in LinkedHash Set:"+s);

        System.out.println("No of length:" + s.size());

        boolean e = s.isEmpty();
        System.out.println("Is it empty:"+ e);
    }
}

//HashSet
class SetHash{
    public static void main(String[] args) {
        Set<String> s1 = new HashSet<>();//Prints Random order
        s1.add("Purple");
        s1.add("Blue");
        s1.add("Black");
        s1.add("Pink");
        s1.add("Green");
        s1.add("Pink");
        s1.add("White");
        s1.add("White");
        s1.add("Red");
        s1.add("Orange");
        System.out.println("Elements in Hash Set:"+s1);


        System.out.println("Contains the element:"+ s1.contains("Blue"));

        Set<String> set = new HashSet<>();
        set.addAll(s1);
        System.out.println("New elements in Hash Set:"+ set);

        boolean e =set.equals(s1);
        System.out.println("Is equals to the element: "+ e);


    }
}

//TreeSet
 class SetTree{
     public static void main(String[] args) {

         Set<String> s2= new TreeSet<>();//prints ascending order
         s2.add("Purple");
         s2.add("Blue");
         s2.add("Black");
         s2.add("Pink");
         s2.add("Green");
         s2.add("Pink");
         s2.add("White");
         s2.add("White");
         s2.add("Red");
         s2.add("Orange");
         System.out.println("Elements in TreeSet:"+s2);


         s2.remove("Red");
         System.out.println("Remove the element:"+s2);


        Set<String> st = new TreeSet<>();
         st.add("Purple");
         st.add("Black");
         st.add("Pink");
         st.add("Green");
         st.add("Merown");
         st.add("Yellow");
         System.out.println("New elements in TreeSet:"+ st);

         st.retainAll(s2);
         System.out.println("Retain the elements:"+st);

     }


 }


